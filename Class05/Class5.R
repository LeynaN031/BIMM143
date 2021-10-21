# Class 5 Data Visualization

# Let's make a scatterplot
# Before we can use it, we need to load it up! 
library(ggplot2)

# Every ggplot has a data + aes + geoms
ggplot(data=cars) + 
  aes(x=speed, y=dist) + 
  geom_point() + 
  geom_smooth()

# Change to a linear model
p <- ggplot(data=cars) + 
  aes(x=speed, y=dist) + 
  geom_point() + 
  geom_smooth(method="lm")

p

p + labs(title="My nice plot", x="speed (MPH)", y="dist (miles)")

# Base graphics is shorter
plot(cars)

# Add a color theme
p + theme_bw()

# FIrst read the data set 
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt" 
genes <- read.delim(url)
head(genes)

# Q. How many genes?
nrow(genes)

# Q. How to access State col
table(genes$State)

# Q. What % are up/down
round(table(genes$State)/nrow(genes) * 100, 2)

# Time to plot
ggplot(genes) + 
  aes(x=Condition1, y=Condition2) + 
  geom_point()





