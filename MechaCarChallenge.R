library(jsonlite)
library(tidyverse)
library(dplyr)

# Import Data set for MechaCar
mecha_car <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F )

# Generate multiple regression model amd generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))
