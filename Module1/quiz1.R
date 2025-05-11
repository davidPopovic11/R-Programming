dataRead <- read.csv("hw1_data.csv")
i <- dataRead[,1]
j <- dataRead[,2, drop = FALSE]
k <- dataRead[,4, drop = FALSE]

good <- i[!is.na(i)]
bad <- i[is.na(i)]


idf <- dataRead[,1, drop = FALSE]
binded <- cbind(idf,j, k)

subs <- binded[binded$Ozone>31 & binded$Temp>90, ,drop = FALSE]

t <-subs[, 2]
goodt <- t[!is.na(t)]

l1 <- dataRead[,4:5, drop = FALSE]
l <- l1[l1$Month == 6, , drop = FALSE]

l11 <- l[,1]
