install.packages("Benchmarking")
install.packages("deaR")
install.packages("readxl")
install.packages("additiveDEA")
install.packages("MultiplierDEA")
install.packages("rio")


library(Benchmarking)
library(deaR)
library(readxl)
library(additiveDEA)
library(MultiplierDEA)
library(rio)

Data<-read_excel("C:/Users/lukar/Desktop/route.xlsx")
x<-as.matrix(with(Data,cbind(Input1,Input2)))
y<-as.matrix(with(Data,cbind(Output2)))

x
y

DeaMultiplierModel(x=x,y=y,rts = 'crs',orientation = 'input' )
DEA01<-DeaMultiplierModel(x=x,y=y,rts = 'crs',orientation = 'input')
export(DEA01,file = 'DEA01.xlsx')

SDEA(x=x,y=y,rts = 'crs',orientation = 'input')