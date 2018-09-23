library("MASS")
data(Boston)
head(Boston)
?Boston
????Boston
library(data.table)
Boston=data.table(Boston)
str(Boston)
tables()
library(Hmisc)
summarize(Boston[rm>4,]$medv,Boston[rm>4,]$chas,mean)
library(sqldf)
sqldf("select avg(medv) from Boston where rm>6 group by chas")
#library(dplyr)
#Boston2=filter(Boston,rm>6)
####summarise(Boston$medv group_by(Boston$chas))'
Boston[rm>6,mean(medv),chas]
summary(Boston$rm)

