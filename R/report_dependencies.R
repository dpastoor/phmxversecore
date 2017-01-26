#' generate a csv file of the phmxversecore package, including installation details
#' @importFrom dplyr filter
#' @importFrom readr read_csv
#' @export
report_dependencies <- function() {
    phmxverse_core <- installed.packages(.libPaths()) %>% as.data.frame %>% filter(Package == "phmxversecore")

    imports <- read_csv(as.character(phmxverse_core$Imports), col_names = F)[, 1]

    session_details <- devtools::session_info(unlist(imports))
    write.csv(session_details$packages, paste0(Sys.Date(), "-package_imports.csv"), quote = F, row.names = F)
}