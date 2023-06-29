# Fit 

MoveApps

Github repository: *github.com/yourAccount/Name-of-App* *(the link to the repository where the code of the app can be found must be provided)*

## Description
This apps allows to fit a continuous time movement model to the data using the function `ctmm.select()` from the **ctmm** package. 

## Documentation


### Input data
A `telemetry.list` from the ctmm package. 


### Output data

An object of type `ctmm model with data`. This is a list with two elements: 1) an object of type `telemetry.list` and 2) a list of the fitted models per animal. 

### Artefacts

`model_summary.txt`: a brief summary of the fitted models for all animals. 

### Settings 
none

### Most common errors
This app will fail or take **very** long of the variograms in the previous step suggest that some animals do not show home-ranging behavior. 

### Null or error handling
