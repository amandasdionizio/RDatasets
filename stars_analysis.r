csv_file <- choose.files(caption = "Select CSV file", multi = FALSE)

data <- read.csv(csv_file, sep=",", dec=".", header=TRUE) 

summary(data$stargazers_count) 
	
stars <- boxplot(data$stargazers_count, main="Number of stars", xlab="Projects", ylab="stargazers_count", col=c("green"), axes=F)

axis(side=2, at=seq(20000, 130000, 5000), labels=seq(20000, 130000, 5000), cex.axis=0.7)

max <- max(data$stargazers_count)

mean <- mean(data$stargazers_count)

median <- median(data$stargazers_count)

rep_num_max_stars  <- subset(data, stargazers_count>=max-20000, name)
rep_num_mean_stars  <- subset(data, stargazers_count<=mean+20000 & stargazers_count>=mean-20000, name)
rep_num_median_stars   <- subset(data, stargazers_count<=median+20000 & stargazers_count>=median-20000, name)

print(rep_num_max_stars)
print(rep_num_mean_stars)
print(rep_num_median_stars)


