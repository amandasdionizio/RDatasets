data(iris)

Sepal.Length <- summary(iris$Sepal.Length)
Sepal.Width <- summary(iris$Sepal.Width)
Petal.Length <- summary(iris$Petal.Length)
Petal.Width <- summary(iris$Petal.Width)

print(Sepal.Length)
print(Sepal.Width)
print(Petal.Length)
print(Petal.Width)

dir <- choose.dir(caption = "Select the directory where the images will be saved")

png(file.path(dir, "boxplot-SepalLength" ))
boxplotsepallength<-boxplot(iris$Sepal.Length ~ iris$Species, main="Boxplot", xlab="", ylab="Lendth", col=c("green"))
dev.off()

png(file.path(dir, "boxplot_SepalWidth" ))
boxplotsepalwidth<-boxplot(iris$Sepal.Width ~ iris$Species, main="Boxplot", xlab="", ylab="Width", col=c("red"))
dev.off()

png(file.path(dir, "boxplot_PetalWidth" ))
boxplotpetalwidth<-boxplot(iris$Petal.Width ~ iris$Species, main="Boxplot", xlab="", ylab="Width", col=c("blue"))
dev.off()

png(file.path(dir, "boxplot_PetalLength" ))
boxplotpetallength<-boxplot(iris$Petal.Length ~ iris$Species, main="Boxplot", xlab="", ylab="Length", col=c("purple"))
dev.off()


# Check correlation 

d_setosa <- iris[iris$Species == "setosa", ]
lm(d_setosa$Sepal.Length ~ d_setosa$Petal.Length, data=d_setosa)

d_versicolor <- iris[iris$Species == "versicolor", ]
lm(d_versicolor$Sepal.Length ~ d_versicolor$Petal.Length, data=d_versicolor)

d_virginica <- iris[iris$Species == "virginica", ]
lm(d_virginica$Sepal.Length ~ d_virginica$Petal.Length, data=d_virginica)

d_setosa <- iris[iris$Species == "setosa", ]
lm(d_setosa$Sepal.Width ~ d_setosa$Petal.Width, data=d_setosa)

d_versicolor <- iris[iris$Species == "versicolor", ]
lm(d_versicolor$Sepal.Width ~ d_versicolor$Petal.Width, data=d_versicolor)

d_virginica <- iris[iris$Species == "virginica", ]
lm(d_virginica$Sepal.Width ~ d_virginica$Petal.Width, data=d_virginica)
