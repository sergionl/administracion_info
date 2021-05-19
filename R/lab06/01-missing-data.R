data <- read.csv("D:/administracion_info/lab06/dataset/missing-data.csv", na.strings = "" )
data$Income[data$Income == 0] <- NA
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm =TRUE), data$Income)
