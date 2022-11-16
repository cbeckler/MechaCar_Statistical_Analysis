library(dplyr)

car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
                data=car_df)

mpg_model

summary(mpg_model)
