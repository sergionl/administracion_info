#inicial
setwd("D:/administracion_info/lab06")
#espacion en blanco == NA
data<-read.csv("D:/administracion_info/lab06/dataset/missing-data.csv", na = c("", "NA", "N/A"))
#verificar datos
data.limpia<-na.omit(data)
is.na(data[4,2])
is.na(data[4,1])
is.na(data$Income)

#caso 1
data.income.limpio <- data[!is.na(data$Income),]

#caso 2
complete.cases(data)
data.limpia2 <- data[complete.cases(data),]
#caso3
data$Income[data$Income == 0]
data$Income[data$Income == 0] <- NA
data$Income[data$Income == 0]

#caso 4
mean(data$Income)
mean(data$Income, na.rm=TRUE)
sd(data$Income)
sd(data$Income, na.rm=TRUE)
sum(data$Income)
sum(data$Income, na.rm=TRUE)

