n <- 500
DatSimetricos <- rnorm(n,5,5)
plot(density(DatSimetricos))

n <- 500
SesDer <- rbeta(n,2,5)
plot(density(SesDer))

n <- 500
SesIzq <- rbeta(n,5,2)
plot(density(SesIzq))



# Distribucion normal
library(ggfortify)
par(mfrow = c(3, 1))
ggdistribution(dbeta, seq(0, 1, 0.01), shape1 = 2, shape2 =5 ,colour = 'blue')   + theme_minimal()
ggdistribution(dnorm, seq(0.5, 3.5, 0.01), mean = 2, sd = .4,colour = 'red')  + theme_minimal()
ggdistribution(dbeta, seq(0, 1, 0.01), shape1 = 5, shape2 =2 ,colour = 'orange')  + theme_minimal()









http://127.0.0.1:23257/graphics/421b43d4-d5f1-4e2b-a8e2-b6aada6efdb2.png

