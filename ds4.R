# data structures

#Matrix----
length(100:123)
m1 =matrix(100:123, ncol=6)
m1
(m1 =matrix(100:123, ncol=6, byrow = T))
(m2 =matrix(c(100:123), ncol=4, byrow = T))
m2[1, 2]
m1[3, 4]
m2[1:2 , ]
m2
m2[, c(1,4)]
m2[c(2,6), c(1,4)]
m2[2:6, 1:4]
colSums(m2)
colMeans(m2)
rowSums(m2)
rowMeans(m2)
mean(m2[, 2])
#x

#Array----
length(100:123)
4*3*2
?array
(a1 = array(100:123, dim=c(4,3,2)))
(loc = paste('loc', 1:4, sep='-'))
(product = paste('p', 1:3, sep='@'))
(coy = paste('coy', 1:2, sep='%'))
dimnames(a1) = list(loc, product, coy)
a1
apply(a1,1, sum)
apply(a1,2, sum)
apply(a1,3, sum)
sum(a1)
apply(a1,c(1,2), sum)
apply(a1,c(2,3), sum)
apply(a1,c(1,3), sum)

#Data Frame----
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(runif(30, 50, 100)))
df1= data.frame(rollno, sname, gender, marks)
head(df1)
tail(df1)
head(df1,n=3)
?sample
str(df1)
class(df1)
summary(df1)
df1
df1$gender
df1$marks
df1[ , c(2,4)]
df1[1:10, ]
df1[marks > 70, ]
df1[marks > 70 & gender=='F', ]
df1[marks > 70 & gender=='F', c(1,2)]
df1[ marks > 70 | gender=='F', ]
names(df1) #names of columns
dim(df1) #Dimensions
aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)
df2 = aggregate(marks ~ gender, data=df1, FUN=max)
pie(x=df2$marks)
barplot(df2$marks, col=1:2)

#using dplyr package
library(dplyr)


#List---

#Factors----
(grades = sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
?table
class(grades)
gradesF = factor(grades)
grades
gradesF
gradesF1 = factor(grades, ordered=T)
gradesF1
gradesF2 = factor(grades, ordered=T, levels=c('D','C','B','A'))
gradesF2
