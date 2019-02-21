setwd("~/Dropbox/Pitts Admission/Courses/19_Spring_Data science for psychology and neuroscience/Homework2")

# Question 3
# Simulating 10 times of rolling a six-sidede die
a = 0
b = 6
ExpectedMean = (a+b)/2
# a) Exp 1: 10 independent throws
n = 10
dat1 = data.frame(length = ceiling(runif(n, min = a, max = b)))
ggplot(dat1, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("10 times rolling")   # Density curve for this experiment
SimulatedMean1 = mean(dat1$length) # simulated mean for experiment 1
ggplot(dat1, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("10 times rolling")  #Histogram

# b) Exp 2: 1,000 independent throws
n2 = 1000
dat2 = data.frame(length = ceiling(runif(n2, min = a, max = b)))
ggplot(dat2, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("1000 times rolling")  # Density curve
SimulatedMean2 = mean(dat2$length) # simulated mean for experiment 2
ggplot(dat2, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("1000 times rolling")#Histogram

# c) Exp 3: 10,000 independent throws
n3 = 10000
dat3 = data.frame(length = ceiling(runif(n3, min = a, max = b)))
ggplot(dat3, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("10000 times rolling")  # Density curve
SimulatedMean3 = mean(dat3$length) # simulated mean for experiment 3
ggplot(dat3, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("10000 times rolling") #Histogram

rm(list = ls())

# Question 4
a = 0
b = 6
n = 10000

# Exp1: Throw 1 dice 10,000 times
Dice1 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 1
dat1 = data.frame(length = Dice1$length)
ggplot(dat1, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("Throw 1 dice 10000 times")  # Density curve
ggplot(dat1, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("Throw 1 dice 10000 times") #Histogram

ggplot(dat1, aes(sample=length)) + stat_qq(distribution = qnorm) +
 ggtitle("Throw 1 dice 10,000 times vs. normal sample") #QQ plot testing against a normal distribution
ggsave("Throw 1 dice.pdf", plot = last_plot(), width = 6, height = 4)

# Exp2: Throw 2 dice 10,000 times
Dice1 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 1
Dice2 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 2
dat2 = data.frame(length = Dice1$length + Dice2$length)
ggplot(dat2, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("Throw 2 dice 10000 times")  # Density curve
ggplot(dat2, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("Throw 2 dice 10000 times") #Histogram

ggplot(dat2, aes(sample=length)) + stat_qq(distribution = qnorm) +
  ggtitle("Throw 2 dice 10,000 times vs. normal sample") #testing against a normal distribution
ggsave("Throw 2 dice.pdf", plot = last_plot(), width = 6, height = 4)

# Exp3: Throw 3 dice 10,000 times
Dice1 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 1
Dice2 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 2
Dice3 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 3
dat3 = data.frame(length = Dice1$length + Dice2$length + Dice3$length)
ggplot(dat3, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("Throw 3 dice 10000 times")  # Density curve
ggplot(dat3, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("Throw 3 dice 10000 times") #Histogram

ggplot(dat3, aes(sample=length)) + stat_qq(distribution = qnorm) +
  ggtitle("Throw 3 dice 10,000 times vs. normal sample") #testing against a normal distribution
ggsave("Throw 3 dice.pdf", plot = last_plot(), width = 6, height = 4)


# Exp4: Throw 6 dice 10,000 times
Dice1 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 1
Dice2 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 2
Dice3 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 3
Dice4 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 4
Dice5 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 5
Dice6 = data.frame(length = ceiling(runif(n, min = a, max = b))) # dice 6
dat4 = data.frame(length = Dice1$length + Dice2$length + Dice3$length + Dice4$length + Dice5$length + Dice6$length)
ggplot(dat4, aes(length)) +  geom_density(alpha = 0.2) + ggtitle("Throw 3 dice 10000 times")  # Density curve
ggplot(dat4, aes(length)) +  geom_histogram(alpha = 0.2) + stat_bin(bins = 30) + ggtitle("Throw 3 dice 10000 times") #Histogram


ggplot(dat4, aes(sample=length)) + stat_qq(distribution = qnorm) +
  ggtitle("Throw 6 dice 10,000 times vs. normal sample") #testing against a normal distribution
ggsave("Throw 6 dice.pdf", plot = last_plot(), width = 6, height = 4)
