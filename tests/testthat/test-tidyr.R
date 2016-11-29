context("tidyr")

library(tidyr)

test_that("gather properly gathers columns", {
    gTheoph <- Theoph %>% gather(key, value, -Subject)
    expect_true(all(unique(gTheoph$key) %in% c("Wt", "Dose", "Time", "conc")))
})
