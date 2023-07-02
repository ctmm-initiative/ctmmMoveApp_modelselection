library(ctmm)
library(purrr)

rFunction = function(data) {
  
  g <- lapply(data, \(x) ctmm.guess(x, interactive = FALSE))
  f1 <- map2(data, g, ~ ctmm.select(.x, .y))
  capture.output(summary(f1), file = appArtifactPath("model_summary.txt"))
  saveRDS(f1, file = appArtifactPath("model.rds"))
  
  # Return summary
  xx <- map(f1, ~ summary(.x)$CI)
  lens <- map_int(xx, nrow)
  xx <- do.call(rbind, xx)
  xx |> as_tibble() |> 
    mutate(id = rep(names(f1), lens), unit = rownames(xx)) |> 
    select(id, unit, low, est, high) |> 
    write.csv("ctmm_select_summary.txt")
  return(list(f1, data))
}
