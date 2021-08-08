library(jsonlite)
library(tidyverse)
library(dplyr)

# Import Data set for MechaCar
mecha_car <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F )

# Generate multiple regression model amd generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car))

# Import Data set for Suspension Coil
suspension_coil <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F )

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Separate dataframes for individual lots
lot1_suspension <- filter(suspension_coil, Manufacturing_Lot  == "Lot1")
lot2_suspension <- filter(suspension_coil, Manufacturing_Lot  == "Lot2")
lot3_suspension <- filter(suspension_coil, Manufacturing_Lot  == "Lot3")

# T-test for overall manufacturing lot
t.test(suspension_coil$PSI, mu=1500)

# T-test for manufacturing lot1
t.test(lot1_suspension$PSI, mu=1500)

# T-test for manufacturing lot2
t.test(lot2_suspension$PSI, mu=1500)

# T-test for manufacturing lot3
t.test(lot3_suspension$PSI, mu=1500)
