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


