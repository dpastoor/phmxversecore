context("dplyr")
library(dplyr)

test_that("cmax calculated by id", {
    out <- Theoph %>% group_by(Subject) %>% summarize(cmax = max(conc))
    expect_equal(n_distinct(out$cmax),length(unique(out$Subject)))
    expect_equal(out$cmax[[1]], 6.44)
    expect_equal(out$cmax[[12]], 11.40)
})

test_that("distinct column behavior is as expected", {
    # due to the major change from 0.4.3 to 0.5 where distinct now only keeps key'd columns
    # by default, this needs to be checked
    out_grouped_sub <- Theoph %>% group_by(Subject) %>% distinct()
    out_grouped_sub_keep_all <- Theoph %>%
        group_by(Subject) %>%
        distinct(.keep_all = TRUE)
    out_sub <- Theoph %>% distinct(Subject)
    out_sub_keep_all <- Theoph %>% distinct(Subject, .keep_all = TRUE)
    expect_equal(names(out_grouped_sub), c("Subject"))
    expect_equal(names(out_grouped_sub_keep_all), names(Theoph))
    expect_equal(names(out_sub), c("Subject"))
    expect_equal(names(out_sub_keep_all), names(Theoph))
})

