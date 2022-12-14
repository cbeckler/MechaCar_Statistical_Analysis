## deliverable 1

library(dplyr)

car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
                data=car_df)

mpg_model

summary(mpg_model)


## deliverable 2

suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_df %>%  summarize(Mean=mean(PSI),
                                              Median=median(PSI),
                                              Variance=var(PSI),
                                              SD=sd(PSI),
                                              .groups = 'keep')

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                          Median=median(PSI),
                                                                          Variance=var(PSI),
                                                                          SD=sd(PSI),
                                                                          .groups = 'keep')


## deliverable 3

t.test(suspension_df$PSI, mu=1500)

t.test(PSI ~ 1, data=suspension_df, mu=1500, subset = Manufacturing_Lot == "Lot1")

t.test(PSI ~ 1, data=suspension_df, mu=1500, subset = Manufacturing_Lot == "Lot2")

t.test(PSI ~ 1, data=suspension_df, mu=1500, subset = Manufacturing_Lot == "Lot3")
