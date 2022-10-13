library(tidyverse)


data <- read.csv("MechaCar_mpg.csv")
head(data)
ggplot(data,aes(x=mpg)) + geom_density()
ks.test(data$mpg, pnorm)

model<-lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=data)
summary(model)

model2<-lm(mpg~ vehicle_length + vehicle_weight + ground_clearance , data=data)
summary(model2)

model3<-lm(mpg~ vehicle_length  + spoiler_angle + ground_clearance , data=data)
summary(model3)

model4<-lm(mpg~ vehicle_length + vehicle_weight  + ground_clearance , data=data)
summary(model4)

model5<-lm(mpg~ vehicle_length  + ground_clearance , data=data)
summary(model5)

data2<- read.csv("Suspension_Coil.csv")
total_summary <- data2 %>%summarise(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI)) 
  group_by(Manufacturing_Lot)
  
lot_summary<- data2 %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median= median(PSI), Variance= var(PSI), SD= sd(PSI))

t_test<- data2 %>%  sample_n(50)

head(data2)
t.test(t_test$PSI, mu=mean(data2$PSI))


lot_1 <- data2 %>% subset(Manufacturing_Lot=="Lot1")

t.test(lot_1$PSI, mu=mean(data2$PSI))

lot_2 <- data2 %>% subset(Manufacturing_Lot=="Lot2")
t.test(lot_2$PSI, mu=mean(data2$PSI))

lot_3 <- data2 %>% subset(Manufacturing_Lot=="Lot3") 
t.test(lot_2$PSI,mu=mean(data2$PSI))
