
omni
names(omni)
mlr2 = lm(sales ~ price + promotion, data = omni)
summary(mlr2)
new1=data.frame(price=60:70, promotion=400:410)
predict(mlr2, newdata = new1)
cbind(new1,predict(mlr2, newdat=new1))


predict(mlr2, newdata = data.frame(price=60, promotion=400))

