female <- subset(judges, gender=="f")
attach(female)
plot(density(retentionScore), main="Density for Female Judges Retention Score")


# Bootstrap the female sample 
x <- female$retentionScore
n <- length(x)
B <- 1000
resamples <- matrix(sample(x,
                           n * B,
                           replace=TRUE), 
                    B, n)
medians <- apply(resamples, 1, median) 
sd(medians)
plot(density(medians),main="Bootstap Retention Female with Sample N=1000")
hist(medians, main="Bootstap Sample - N=1000")
                           