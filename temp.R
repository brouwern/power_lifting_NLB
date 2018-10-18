
opl <- read.csv(file ="openpowerlifting.csv.bz2")

dim(opl)
names(opl)
head(opl$Date)


library(dplyr)
library(lubridate)
library(ggpubr)

summary(opl$Equipment)


opl$year <- year(opl$Date)
 
opl2018 <- opl %>% 
  filter(year == 2018) %>% 
  select(year, TotalKg,AgeClass,BodyweightKg)

dim(opl2018)

ggscatter(data = opl2018,
       y = "TotalKg",
       x = "BodyweightKg",
       color = "AgeClass")
