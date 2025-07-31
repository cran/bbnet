## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bbnet)

## -----------------------------------------------------------------------------
data("my_BBN")

head(my_BBN)

## -----------------------------------------------------------------------------
data("dogwhelk", "winkle", "combined")

head(dogwhelk)

## -----------------------------------------------------------------------------
bbn.predict(bbn.model = my_BBN, priors1 = dogwhelk, figure = 0) # figure set to zero, this is explained below


## -----------------------------------------------------------------------------
bbn.predict(bbn.model = my_BBN, priors1 = dogwhelk, priors2 = winkle, priors3= combined, figure = 2, boot_max = 100, values = 0, font.size = 7)

## -----------------------------------------------------------------------------
results <- bbn.predict(bbn.model = my_BBN, priors1 = dogwhelk, priors2 = winkle, priors3= combined, figure = 0, boot_max = 100, values = 1, font.size = 7)
results[[2]]$summary  # view the numeric output for scenario 2

## -----------------------------------------------------------------------------
bbn.timeseries(bbn.model = my_BBN, priors1 = combined, timesteps = 6, disturbance = 2)

## -----------------------------------------------------------------------------
bbn.visualise(bbn.model = my_BBN, priors1 = combined, timesteps = 5, disturbance = 2, threshold=0.05, font.size=0.7, arrow.size=4)

## -----------------------------------------------------------------------------
bbn.sensitivity(bbn.model = my_BBN, boot_max = 100, 'Limpet', 'Green Algae')

## -----------------------------------------------------------------------------
data("my_network")

head(my_network)

## -----------------------------------------------------------------------------
bbn.network.diagram(bbn.network = my_network, font.size = 0.7, arrow.size = 4, arrange = layout_on_sphere)
bbn.network.diagram(bbn.network = my_network, font.size = 0.7, arrow.size = 2, arrange = layout_on_grid)
bbn.network.diagram(bbn.network = my_network, font.size = 0.7, arrow.size = 2, arrange = layout.random)
bbn.network.diagram(bbn.network = my_network, font.size = 0.7, arrow.size = 2, arrange = layout.circle)


