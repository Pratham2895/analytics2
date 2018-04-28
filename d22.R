
rollno = 1:3
sname = c('s1','s2','s3')
(sname = c(paste('s',1:3, sep='')))
df = data.frame(rollno, sname)
df
#str, dim, class, summary
str(df)
#filter
df$rollno
df$sname
df[c(1,2)]

#data frame

(rollno = paste('S',1:30, sep='-'))
(sname = paste0('Student', 1:30,'- ', 'xyz'))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.6 , .4)))
table(gender)
(age = floor(runif(30, 21, 50)))
(course = sample(c('BTech', 'MTech', 'Phd'),size =30, replace =T, prob = c(.5, .3, .2)))
table(course)
pie(table(course))
barplot(table(course))
(marks = round(rnorm(30, 60, 5)))
boxplot(marks)
hist(marks, freq=F)
lines(density(marks))
(married = sample(c(TRUE, FALSE), replace=T, size=30, prob=c(.1, .9)))
table(married)
df = data.frame(rollno, sname, age, course, gender, marks, married)
df

#export to csv
write.csv(df, './pumba.csv')
