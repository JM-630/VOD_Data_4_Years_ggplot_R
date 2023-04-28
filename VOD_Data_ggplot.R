#turn vod raster data to spatial points DF

library(readxl)
library(writexl)
library(tidyverse)
library(rio)
library(openxlsx)
library(ggplot2)

library(dplyr)
library(magrittr)
library(raster)
library(rgdal)
library(tiff)
library(WriteXLS)
library("xlsx")


# change depending on the number of days in chosen month
Jan <- 31
Feb <- 29
Mar <- 31
Apr <- 30
May <- 31
June <- 30
July <- 31
Aug <- 31
Sep <- 30
Oct <- 31
Nov <- 30
Dec <- 31

# vectors containg that will contain the averages for each month
JanV <- c()
FebV <- c()
MarV <- c()
AprV <- c()
MayV <- c()
JuneV <- c()
JulyV <- c()
AugV <- c()
SepV <- c()
OctV <- c()
NovV <- c()
DecV <- c()

VOD <- c()
Month <- c()

for (x in 1:Jan) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_january_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JanV <- c(JanV, vod)
  
}

# averages the data from the month
mean <- mean(JanV)
Average <- as.numeric(mean)

str_name2 <- 'Jan'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)



for (x in 1:Feb) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_february_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    FebV <- c(FebV, vod)
  
}

# averages the data from the month
mean <- mean(FebV)
Average <- as.numeric(mean)

str_name2 <- 'Feb'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Mar) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_march_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    MarV <- c(MarV, vod)
  
}

# averages the data from the month
mean <- mean(MarV)
Average <- as.numeric(mean)

str_name2 <- 'Mar'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Apr) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_april_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    AprV <- c(AprV, vod)
  
}

# averages the data from the month
mean <- mean(AprV)
Average <- as.numeric(mean)

str_name2 <- 'Apr'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:May) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_may_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    MayV <- c(MayV, vod)
  
}

# averages the data from the month
mean <- mean(MayV)
Average <- as.numeric(mean)

str_name2 <- 'May'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:June) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_june_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JuneV <- c(JuneV, vod)
  
}

# averages the data from the month
mean <- mean(JuneV)
Average <- as.numeric(mean)

str_name2 <- 'Jun'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:July) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_july_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JulyV <- c(JulyV, vod)
  
}

# averages the data from the month
mean <- mean(JulyV)
Average <- as.numeric(mean)

str_name2 <- 'Jul'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Aug) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_august_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    AugV <- c(AugV, vod)
  
}

# averages the data from the month
mean <- mean(AugV)
Average <- as.numeric(mean)

str_name2 <- 'Aug'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Sep) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_september_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    SepV <- c(SepV, vod)
  
}

# averages the data from the month
mean <- mean(SepV)
Average <- as.numeric(mean)

str_name2 <- 'Sep'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Oct) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_october_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    OctV <- c(OctV, vod)
  
}

# averages the data from the month
mean <- mean(OctV)
Average <- as.numeric(mean)

str_name2 <- 'Oct'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Nov) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_november_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    NovV <- c(NovV, vod)
  
}

# averages the data from the month
mean <- mean(NovV)
Average <- as.numeric(mean)

str_name2 <- 'Nov'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Dec) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_december_2016'
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    DecV <- c(DecV, vod)
  
}

# averages the data from the month
mean <- mean(DecV)
Average <- as.numeric(mean)

str_name2 <- 'Dec'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

VOD_Extract = as.data.frame(VOD,Month)

Month <- factor(Month, levels = Month)

# df_long <- VOD_Extract %>% pivot_longer(cols = c(Average), names_to = "Variable", values_to = "Value")

# Make VOD label horizontal
# graph <- ggplot(VOD_Extract, aes(x = Month, y = VOD, group = 1)) +
#   geom_line(color="turquoise4") +
#   theme_minimal() + theme(axis.title.y=element_text(angle=0))

graph <- ggplot(VOD_Extract, aes(x = Month, y = VOD, group = 1, color="2016")) +
  geom_smooth(mapping = aes(x = Month, y = VOD), alpha = 0.2) +
  theme_minimal() + theme_grey() +
  labs(color = "Year")

# change depending on the number of days in chosen month 
Jan <- 31
Feb <- 28
Mar <- 31
Apr <- 30
May <- 31
June <- 30
July <- 31
Aug <- 31
Sep <- 30
Oct <- 31
Nov <- 30
Dec <- 31

# vectors containg that will contain the averages for each month
JanV <- c()
FebV <- c()
MarV <- c()
AprV <- c()
MayV <- c()
JuneV <- c()
JulyV <- c()
AugV <- c()
SepV <- c()
OctV <- c()
NovV <- c()
DecV <- c()

Year = "2017"  

for (y in 1:3) {
    
  VOD <- c()
  Month <- c()
  
for (x in 1:Jan) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_january'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JanV <- c(JanV, vod)
  
}

# averages the data from the month
mean <- mean(JanV)
Average <- as.numeric(mean)

str_name2 <- 'Jan'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)



for (x in 1:Feb) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_february'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    FebV <- c(FebV, vod)
  
}

# averages the data from the month
mean <- mean(FebV)
Average <- as.numeric(mean)

str_name2 <- 'Feb'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Mar) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_march'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    MarV <- c(MarV, vod)
  
}

# averages the data from the month
mean <- mean(MarV)
Average <- as.numeric(mean)

str_name2 <- 'Mar'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Apr) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_april'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    AprV <- c(AprV, vod)
  
}

# averages the data from the month
mean <- mean(AprV)
Average <- as.numeric(mean)

str_name2 <- 'Apr'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:May) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_may'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    MayV <- c(MayV, vod)
  
}

# averages the data from the month
mean <- mean(MayV)
Average <- as.numeric(mean)

str_name2 <- 'May'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:June) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_june'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JuneV <- c(JuneV, vod)
  
}

# averages the data from the month
mean <- mean(JuneV)
Average <- as.numeric(mean)

str_name2 <- 'Jun'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:July) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_july'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    JulyV <- c(JulyV, vod)
  
}

# averages the data from the month
mean <- mean(JulyV)
Average <- as.numeric(mean)

str_name2 <- 'Jul'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Aug) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_august'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    AugV <- c(AugV, vod)
  
}

# averages the data from the month
mean <- mean(AugV)
Average <- as.numeric(mean)

str_name2 <- 'Aug'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)


for (x in 1:Sep) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_september'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    SepV <- c(SepV, vod)
  
}

# averages the data from the month
mean <- mean(SepV)
Average <- as.numeric(mean)

str_name2 <- 'Sep'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Oct) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_october'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    OctV <- c(OctV, vod)
  
}

# averages the data from the month
mean <- mean(OctV)
Average <- as.numeric(mean)

str_name2 <- 'Oct'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Nov) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_november'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    NovV <- c(NovV, vod)
  
}

# averages the data from the month
mean <- mean(NovV)
Average <- as.numeric(mean)

str_name2 <- 'Nov'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

for (x in 1:Dec) {
  
  # change the path to determine which geotiff is being converted
  str_name <-'/Users/student/Documents/VOD_Project/vod_summer_geotiff/vod_december'
  str_name <- paste(str_name, Year, sep = "_")
  str_name <- paste(str_name, x, sep = "_")
  str_name <- paste(str_name, "tiff", sep = ".")
  imported_raster = raster(str_name)
  
  # change the csv file here to change where the vod data is being taken
  site <- read.csv("/Users/student/Documents/VOD_Project/Switzerland.csv", header=TRUE)
  
  coords = data.frame(lat=site[,2],long=site[,3])
  coordinates(coords)=c("long","lat")
  
  vod = extract(x=imported_raster,y=coords)
  
  # adds value to the vector if it is not NA
  if (!is.na(vod))
    DecV <- c(DecV, vod)
  
}

# averages the data from the month
mean <- mean(DecV)
Average <- as.numeric(mean)

str_name2 <- 'Dec'

VOD <- c(VOD, Average)

Month <- c(Month, str_name2)

VOD_Extract2 = as.data.frame(VOD,Month)

Month <- factor(Month, levels = Month)

if (y == 1) {
  graph <- graph + geom_smooth(data = VOD_Extract2, aes(y = VOD, color = "2017"), alpha = 0.2)
  Year <- "2018"
}
if (y == 2) {
  graph <- graph + geom_smooth(data = VOD_Extract2, aes(y = VOD, color = "2018"), alpha = 0.2)
  Year <- "2019"
}
if (y == 3) {
  graph <- graph + geom_smooth(data = VOD_Extract2, aes(y = VOD, color = "2019"), alpha = 0.2)
}

}

graph
