#Crear ficheros de datos
#caso 1 crear y cargar ficheros Rdata y rds

clientes<-c("Arturo", "Bill","Jack")
fechas<-c("2021-05-'1","2021-04.28","2021-03-30")
pagos<- c(315.1,205.4,450.2) 

fechas <- as.Date(c("2021-05-01", "2021-04-28", "2021-03-30"))

pedidos<- data.frame(clientes,fechas,pagos)
save(pedidos,file = "D:/administracion_info/lab07/clase 2/scripts/pedidos.Rdata")
save.image(file = "D:/administracion_info/lab07/clase 2/scripts/alldata.Rdata")

saveRDS(pedidos,file = "D:/administracion_info/lab07/clase 2/scripts/pedidos.rds")
remove(pedidos)

load("D:/administracion_info/lab07/clase 2/scripts/pedidos.Rdata")
attach("D:/administracion_info/lab07/clase 2/scripts/pedidos.Rdata")

orders<- readRDS("D:/administracion_info/lab07/clase 2/scripts/pedidos.rds")

write.csv(pedidos,'D:/administracion_info/lab07/clase 2/scripts/pedidos.csv', na="NA",row.names=FALSE)
