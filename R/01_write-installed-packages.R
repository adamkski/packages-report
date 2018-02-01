## deja vu from yesterday!

## create a data frame of your installed packages
library(tidyverse)
library(here)
inst_packages <- installed.packages() %>%
  as_tibble()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

inst_packages <- inst_packages %>%
  select( Package, LibPath, Version, Priority, Built )

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

inst_packages %>% write_csv( here( "data", "installed-packages.csv") )

## when this script works, stage & commit it and the csv file
## PUSH!
