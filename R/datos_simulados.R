library(tidyverse)
x=c(51.35, 49.88, 49.35, 51.21, 51.24, 45.75, 48.42, 47.29, 48.98, 50.06, 50.94, 45.41, 55.69, 48.90, 56.00, 44.72, 56.89, 46.61, 53.25, 48.46, 49.74, 45.03, 63.02, 50.96, 50.43, 51.19, 53.45, 52.10, 49.61, 45.89, 49.76, 42.30, 53.48, 54.71, 53.48, 56.67, 44.38, 51.18, 51.06, 54.96, 64.44, 51.85, 45.33, 62.74, 43.84, 51.32, 53.70, 51.00, 52.86, 43.06, 43.63, 51.24, 52.84, 49.19, 49.56, 49.56, 51.49, 55.31, 46.74, 47.62, 51.85, 58.90, 50.80, 43.39, 48.54, 52.72, 44.82, 52.49, 58.43, 52.91)
data1 <- data.frame(
  name1=rep("A",70),
  value1=x
)


p=ggplot(data1, aes(x=value1))+geom_boxplot(fill = "#034A94",           # Color caja
                                          alpha = 0.3,        # Transparencia
                                          color = "#0EB0C6",          # Color del borde
                                          outlier.colour = "#B0394A") # Color atípicos

p + geom_text(data = NULL, x = 52.89, y = 0.4, label = "Q3",col="#034A94")+
  geom_text(data = NULL, x = 50.98, y = 0.4, label = "Q2",col="#034A94")+
  geom_text(data = NULL, x = 48.43, y = 0.4, label = "Q1",col="#034A94") +
  geom_text(data = NULL, x = 42.3, y = 0.02, label = "mín",col="#034A94") +
  geom_text(data = NULL, x = 64.44, y = 0.02, label = "máx",col="#034A94") +
  geom_text(data = NULL, x = 63, y = 0.02, label = "atípicos",col="#034A94") +
  geom_text(data = NULL, x = 50.79, y = 0, label = "x",col="#686868") +
  geom_text(data = NULL, x = 50.5, y = 0.02, label = "media",col="#034A94")



p2=ggplot(data1, aes(x=value1, y=" "))+
  geom_jitter(color="#034A94", size=3, alpha=0.9) 
p2= p2 + geom_text(data = data1, x = 50.5, y = 0, label = "x",col="#034A94")
p2


x1=round(rnorm(30, 28,5),0)
x2=round(rnorm(30, 28,15),0)

x1=c(27, 27, 28, 28, 34, 28, 26, 33, 24, 28, 25, 25, 33, 27, 34, 38, 24, 26, 22, 
     23, 33, 23, 26, 26, 32, 33, 29, 30, 25, 23)

x2=c(35,  25,  19,  17,  24,   17,  55,  25,  31,   35,  43,  28,  32,  19,  20,  17,
     25,  18,  21,  22,  17,  35,  29,  20,  54,  46,  24, 29, 40, 18)

max(x1)-min(x1)
max(x2)-min(x2)

data2 <- data.frame(
         name2=c(rep("Grupo1",30), rep("Grupo2",30)),
  value2=c(x1,x2)
)

p3=ggplot(data2, aes(x=value2, y=name2, color = name2)) +
          geom_jitter(size=3, alpha=1) +
          scale_color_manual(values=c("#FF7F00", "#034A94")) 
p3          
  
