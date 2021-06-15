library(tidyverse)
library(dplyr)
read_csv("Suspension_Coil.csv")
read_csv("Mechacar_mpg.csv")

regress = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(regress)

total_summary <- summarise(Suspension_Coil, mean(PSI), median(PSI),var(PSI), sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise( mean(PSI),
                                                      
                                                                              median(PSI),var(PSI), sd(PSI), .groups = 'keep') 
total_summary
lot_summary

lott1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
lott2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
lott3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")

t.test(Suspension_Coil$PSI, mu = 1500, alternative = "two.sided")
t.test(lott1$PSI, mu = 1500, alternative = "two.sided")
t.test(lott2$PSI, mu = 1500, alternative = "two.sided")
t.test(lott3$PSI, mu = 1500, alternative = "two.sided")

