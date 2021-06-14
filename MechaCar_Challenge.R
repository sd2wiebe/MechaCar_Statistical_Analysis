library(dplyr)
read_csv("MechaCar_mpg.csv")
regress = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(regress)