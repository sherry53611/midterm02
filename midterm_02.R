par(mfrow=c(4,2))

name1 <- c("a","b","c","d","e","f","g","h","i","j")
speed <- c(4,4,7,7,8,9,10,10,10,11)
dist <- c(2,10,4,22,16,10,18,26,34,17)
x3 <- c("1","1","1","2","2","2","3","3","3","3")
Species <- factor(x3)
hw02 <- data.frame(name1,speed,dist,Species)
**散佈圖**
plot(hw02$speed,hw02$dist,type="p",main="The first graph",sub="Midterm_02",xlab="Speed",ylab="Dist")

**線圖**
plot(hw02$speed,hw02$dist,type="l",main="The second graph",xlab="Speed",ylab="Dist")

**直方圖(1)**
hist(hw02$speed,main="The third graph",xlab="Speed",col = "yellow",border="red")

**直方圖(2)**
n <- 100
hist(rnorm(n),main=paste("Normal Distribution of",n,"Obs"),xlab="Speed",col="green")

**盒鬚圖(1)**
boxplot(hw02$dist,names = 1,border = "purple",main="The 4th graph",xlab="Dist",horizontal = TRUE)

**盒鬚圖(2)**
boxplot(hw02$dist ~ hw02$Species,main="Dist by Species",col="pink")

**長條圖(1)**
barplot(table(hw02$speed),main="The 5th graph",xlab="Speed",ylab="Counts",col=5)

**長條圖(2)**
cars_name <- row.names(hw02)
barplot(hw02$speed,main="The 5th graph(2)",horiz = TRUE,names=cars_name,xlab="Speed",ylab="Car's Name")

