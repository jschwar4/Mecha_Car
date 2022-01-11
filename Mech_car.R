library("dplyr")
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
summary(lm(mecha_table$mpg~mecha_table$vehicle_length + mecha_table$vehicle_weight + mecha_table$spoiler_angle + mecha_table$ground_clearance + mecha_table$AWD, mecha_table))

library("tidyverse")
coils <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- coils %>% summarize(mean = mean(PSI),
                               median = median(PSI),
                               variance = var(PSI),
                               sd = sd(PSI)
                               , .groups = 'keep')

lot_coils <- coils %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI),
                                                                 median = median(PSI),
                                                                 variance = var(PSI),
                                                                 sd = sd(PSI)
                                                                 , .groups = 'keep')
t.test(log10(coils$PSI),mu=1500)
t.test(log10(subset(coils,Manufacturing_Lot=="Lot1",PSI)),mu=1500)
t.test(log10(subset(coils,Manufacturing_Lot=="Lot2",PSI)),mu=1500)
t.test(log10(subset(coils,Manufacturing_Lot=="Lot3",PSI)),mu=1500)
?subset
subset(coils,Manufacturing_Lot=="Lot1",PSI)
