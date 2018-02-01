## deja vu from yesterday!

## create a data frame of your installed packages

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
packages <- installed.packages() %>%
  as_tibble()

## write it to data/installed-packages.csv
write.csv(packages, file = "data/installed-packages.csv")

## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
