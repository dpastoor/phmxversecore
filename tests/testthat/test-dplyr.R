context("dplyr")

test_that("cmax calculated by id", {
    out <- Theoph %>% dplyr::group_by(Subject) %>% dplyr::summarize(cmax = max(conc))

    expect_equal(dplyr::n_distinct(out$cmax),length(unique(out$Subject)))
    expect_equal(out$cmax[[1]], 6.44)
    expect_equal(out$cmax[[12]], 11.40)

})
