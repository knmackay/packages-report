## create a data frame from data/installed-packages.csv
## with, e.g., readr::read_csv() or read.csv()
ipt <- read.csv("data/installed-packages.csv")

## filter out packages in the default library
filter_pkg <- ipkg %>% filter(Priority == "base")

## keep variables Package and Built
select_pkg <- filter_pkg %>% select(Package, Built)

## if you use dplyr, code like this will work:
apt <- ipt %>%
  filter(LibPath == .libPaths()[1]) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
write.csv(apt, "data/add-on-packages.csv")

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples
write.csv(apt_freqtable, "data/add-on-pacakage-freqtable.csv")

## when this script works, stage & commit it and the csv files
## PUSH!
