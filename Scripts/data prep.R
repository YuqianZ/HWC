getwd()

result_test <- read.csv("Data/result1.csv")

result_all <- read.csv("Data/result_full.csv")


summary(result_test)
colnames(result_all)

attach(result_all)
result_all_date <- result_all[order(Date),]


summary(result_all_date[3])

result_2011 <- result_all_date[which(result_all_date$Date < 20120000),]
result_2011_2020 <- result_all_date[which(result_all_date$Date < 20210000),]

write.csv(result_2011_2020, "Data/result_2011_2020.csv", row.names = FALSE)

result_validation <- result_2011_2020[1:100,]
write.csv(result_validation, "Data/result_validation.csv", row.names = FALSE)
