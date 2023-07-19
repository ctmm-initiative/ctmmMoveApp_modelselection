# Fit a Continuous-Time Movement Model (ctmm)

MoveApps

Github repository: https://github.com/ctmm-initiative/ctmmMoveApp_modelselection

## Description
This apps allows to fit a continuous-time movement model to the data selecting the best model using the function `ctmm.select()` from the **ctmm** package. 

## Documentation
Based on the package `ctmm`, this App allows fitting continuous-time movement models to tracking data. An initial model is guessed by the track properties and a best model is then selected form several candidates. This model takes the autocorrelation structure of movement track data into account and does not require input parameters or settings. 

Beware that the model assumes range residence behaviour of the tracked animals. You can verify that from variograms that can be obtained using the `Variogram` App.

**ATTENTION**: This App can have a long run time (hours). Consider pinning this app for further workflow runs. Subsequent apps like *`Autocorrelated Kernel Density Estimate (aKDE)`* and *`Estimate Occurrence Distribution (Kriging)`* with interactive user interface (once the app has run a button "OPEN APP UI" appears) can only be accessed for 8 hours (afterwards the "OPEN APP UI" is not visible anymore). To get again access to it, the workflow has to be run again. BUT before doing this, pin the workflow to the *`Fit a Continuous-Time Movement Model (ctmm)`* (menu at the top right corner of the App - *"Pin to this App"*) to avoid the long run time again. An app can only be pinned once it has run and produced results.


### Input data
A `telemetry.list` object as defined from the ctmm package. 

### Output data

An object of type `ctmm model with data`. This is a list with two elements: 1) an object of type `telemetry.list` and 2) a list of the fitted models per animal. 

### Artefacts

`model_summary.txt`: a brief summary of the fitted models for all animals. This summary contains for each animal (row) the following information: `id` the name of the animal, `IC` the information criteria differences differences for comparison across autocovariance structures, `RMSPE` the difference in root mean squared prediction error, `DOF` approximate degrees of freedom, `model` the selected model. 
            

`ctmm_select_summary.txt`: the full summary of the fitted models for each animal. This summary contains the following columns: `id` the name of the animal, `unit` the parameter name and its unit, the lower (`low`) and upper (`high`) 95% confidence interval of the estimated parameters (`est`). 

`models.rds`: The fitted `ctmm` models for each animal. This can be loaded by R and used locally for further analyses

### Settings 
none

### Most common errors
Please make an issue here if you repeatedly encounter errors.

### Null or error handling
This app will fail or take **very** long if the variograms in the previous step suggest that some of the tracked animals do not show home-ranging behavior. 

