## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>", fig.width = 7, fig.height = 4.5)

## ----setup--------------------------------------------------------------------
library(RtForecastR)

## -----------------------------------------------------------------------------
data(measles_cdmx)
fit <- rt_forecast(measles_cdmx$time, measles_cdmx$cases,
                    mean_GI = 11/7, var_GI = (4/7)^2)
fit

## -----------------------------------------------------------------------------
plot(fit, which = "Rt")

## -----------------------------------------------------------------------------
plot(fit, which = "forecast")

## -----------------------------------------------------------------------------
mae(fit$predictions$cases, fit$predictions$pred_next)
coverage(fit$predictions$cases, fit$predictions$pred_lo95, fit$predictions$pred_hi95)

