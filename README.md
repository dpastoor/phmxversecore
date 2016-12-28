phmxversecore
==========================================

This pakage contains the core packages useful to pharmacometric analyses.

Installation, dependency management, and version tracking are all pain points faced
by individuals and organizations. This package allows some degree of management
by federating installation, and adding helper functions to track deps. In the future,
this package will also support providing upgrade path(s) when reviving old projects
by examining major version changes and (potentially) detecting functions that may have
changed.

For example, the behavior of dplyr::distinct changed between 0.4.3 --> 0.5.0 by
keeping all columns to only keeping key'd columns, unless adding a param `.keep_all = TRUE`

When detecting a project was built using 0.4.3 and currently having 0.5.0 installed would
look for instances of distinct() and alert.

Below is a list of packages that are currently included -

| Packages              | Utility                                                      |
|-----------------------|--------------------------------------------------------------|
| *Reading Data*        |                                                              |
| feather               | interoperable datasets between R and Python                  |
| haven                 | Sas7dbat files                                               |
| readr                 | super fast data reading                                      |
| readxl                | read excel files                                             |
| SASXport              | Read SASxpt files                                            |
|                       |                                                              |
| *Data Manipulation*   |                                                              |
| dplyr                 | data manipulation                                            |
| forcats               | deal with factors effortlessly                               |
| hms                   | time and date manipulations                                  |
| lazyeval              | constructs that help in functional programming               |
| lubridate             | efficiently deal with dates and times                        |
| magrittr              | Simplify R codes with pipes                                  |
| PKPDmisc              | PKPD specific data manipulation                              |
| purrr                 | efficient functional programming - lapply on steroids        |
| stringr               | efficient string manipulation in R                           |
| tibble                | the new data frames structure in R                           |
| tidyr                 | data manipulation                                            |
|                       |                                                              |
| *Data Visualization*  |                                                              |
| forestmodel           | forestplots                                                  |
| forestplot            | forestplots                                                  |
| GGally                | Correlation plots                                            |
| ggplot2               | data visualization                                           |
| ggrepl                | ggplot add on to label data points                           |
|                       |                                                              |
| *Reproducible Research*|                                                              |
| bookdown              | Author books and reports in Rmarkdown                        |
| knitr                 | develop reproducible workflows                               |
| markdown              | develop reproducible workflows                               |
| rmarkdown             | develop reproducible workflows                               |
| tableone              | Super easy data summaries required for Table1 in manuscripts |
|                       |                                                              |
| *Statistics*          |                                                              |
| broom                 | Best package to post process statistical models in R         |
| lme4                  | Linear mixed effect models                                   |
| modelr                | helper functions to summarize model results in R             |
| rms                   | Regression Modeling Strategies by Frank Harrel               |
| rpart                 | Recursive partioning and cluster analysis                    |
| rpart.plot            | plot rpart models                                            |
| rstan                 | R interface for stan                                         |
| survival              | Survival modeling in R                                       |
|                       |                                                              |
| *PKPD related*        |                                                              |
| DoseFinding           | Design and Analysis of DoseFinding Experiments               |
| future                | easy parallelization for heavy simulations                   |
| mlxr                  | PKPD simulation in R                                         |
| mrgsolve              | PKPD simulation in R                                         |
| PKNCA                 | NCA in R                                                     |
| PKPDdatasets          | Package with example PKPD datasets                           |
| PKPDsim               | PKPD simulation in R                                         |
| PopED                 | Population Optimal Design in R                               |
| RxODE                 | PKPD simulation in R                                         |
| saemix                | saem algorithm estimation in R                               |
| vpc                   | perform visual predictive checks in R                        |
| xpose4                | NONMEM post-processing                                       |
