summary(df)
str(df)
names(df)
aggregate(df$revenue, by=list(df$region), mean)