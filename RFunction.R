library(ctmm)
library(purrr)

rFunction = function(data) {
  
  g <- lapply(data, \(x) ctmm.guess(x, interactive = FALSE))
  f1 <- map2(data, g, ~ ctmm.select(.x, .y))
  capture.output(summary(f1), file = appArtifactPath("model_summary.txt"))
  saveRDS(f1, file = appArtifactPath("model.rds"))
  
  return(list(data,f1))
}