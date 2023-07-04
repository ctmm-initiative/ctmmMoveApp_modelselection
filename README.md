# Fit a continuous time movement model

MoveApps

Github repository: https://github.com/ctmm-initiative/moveapps_ctmm_modelselection

## Description
This apps allows to fit a continuous time movement model to the data using the function `ctmm.select()` from the **ctmm** package. 

## Documentation


### Input data
A `telemetry.list` from the ctmm package. 


### Output data

An object of type `ctmm model with data`. This is a list with two elements: 1) an object of type `telemetry.list` and 2) a list of the fitted models per animal. 

### Artefacts

`model_summary.txt`: a brief summary of the fitted models for all animals. 

`ctmm_select_summary.txt`: the full summary of the fitted models. 

`models.rds`: The fitted ctmm models for each animal. 

### Settings 
none

### Most common errors
This app will fail or take **very** long of the variograms in the previous step suggest that some animals do not show home-ranging behavior. 

### Null or error handling
