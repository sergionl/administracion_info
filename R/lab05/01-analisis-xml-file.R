install.packages("XML")
library(XML)
library(methods)
data<-xmlParse("D:/administracion_info/lab05/data/cd_catalog.xml")
root.node <- xmlRoot(data)
root.node[1]
root.node[2]
ct.data <- xmlSApply(root.node, function(x) xmlSApply(x, xmlValue))
ct.datos <- data.frame(t(ct.data), row.names = NULL)
