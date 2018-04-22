# data structures

#Vectors----
v1 = c(1,2,3,4,5)
class(v1)
v1
v1[v1==4]=7
v1
?class
v2= c('A','B','C','D','e')
class(v2)
v3 =c(TRUE, FALSE, T, F)
class(v3)
v2[3]
v3[4]

v4= c(1,2, 'A')
v4
v5 = c(T,2,F)
v5
class(v4)

set.seed(100)
v7 = rnorm(100, mean=60, sd=15)
v7
mean(v7)
sd(v7)
hist(v7)
?hist
hist(v7, breaks=15)
?rnorm
set.seed(100)
v7 = rnorm(100, mean=60, sd=15)
v7
mean(v7)
set.seed(100)
v9 = rnorm(100, mean=60, sd=15)
v9
mean(v9)

hist(v7, breaks=15, col=1:15)
hist(v7, freq=F, col='yellow', main='Pune Univ', xlab='Marks', ylab='Density of Counts')
lines(density(v7), col='red', lty=4, lwd=3)
#title(main='Pune University', sub='MBA')

v10 = rnorm(200, mean=50, sd=18)
v10
