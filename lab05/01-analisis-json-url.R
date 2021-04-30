install.packages("jsonlite")
library(jsonlite)
floattrades.url<-"https://www.floatrates.com/daily/usd.json"
floatrades.data<-fromJSON(floattrades.url)