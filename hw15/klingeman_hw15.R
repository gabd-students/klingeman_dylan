
# Libraries code ----------------------------------------------------------
library(tidyverse)
library(here)
library(lubridate)
library(sf)
library(patchwork)
library(gghighlight)
library(ggthemes)

# Constants ---------------------------------------------------------------
first_us_case <- "01/19/2020"
first_mo_case <- "03/08/2020"
lower_48 <- c("Alabama","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida",
              "Georgia","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland",
              "Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire",
              "New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania",
              "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington",
              "West Virginia","Wisconsin","Wyoming")
cdc_regions <- c("Northeast", "South", "Midwest", "West")
# Functions ---------------------------------------------------------------


# Importing, wrangling, graphs.  ------------------------------------------
### Plot 1




