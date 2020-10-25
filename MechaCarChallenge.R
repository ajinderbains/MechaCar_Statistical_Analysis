library(dplyr)
#Read MechaCar_mpg.csv file
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)
# Perform Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
# Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))
#DEL-2
# Read Suspension_coil.csv
Suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
head(Suspension_coil)
# Find Mean,Median,Mode,Variance and SD and store in DF
total_summary <- Suspension_coil %>%  summarize(Mean=mean(PSI),Median=median(PSI),Standard_Dev=sd(PSI),Variance=var(PSI))
# Group by Manufacturing Lot to find summary
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Standard_Dev=sd(PSI),Variance=var(PSI), .groups = 'keep')

# DEL3
t.test(log10(Suspension_coil$PSI), mu=1500)
# DF for each Lot from Suspension_coil
lot1_df <-Suspension_coil %>% filter(Manufacturing_Lot=='Lot1')
lot2_df <-Suspension_coil %>% filter(Manufacturing_Lot=='Lot2')
lot3_df <-Suspension_coil %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot1_df$PSI,mu=1500)
t.test(lot2_df$PSI,mu=1500)
t.test(lot3_df$PSI,mu=1500)
