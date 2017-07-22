x <- 10:1
y <- -4:5
q <- c("Hotkey", "Football", "Baseball", "Curling", "Rugby", 
       "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")

#在统计上，每一列代表一个变量，每一行代表一个观测
#在数据框中,每一列实际是一个向量，各列都有相同的长度，可以用来保存不同类型的数据。
#这也暗示着，在每一列里面，每一个元素必须是相同类型的，就像向量要求的一样
theDF <- data.frame(x,y,q)
theDF

theDF <- data.frame(First = x, Second = y, Sport = q)
theDF

nrow(theDF)
ncol(theDF)
dim(theDF)

#检查数据框列向量的名称
names(theDF)
names(theDF)[3]

#数据框行向量的名称
rownames(theDF)
rownames(theDF) <- c("One", "Two", "Three", "Four", "Five",
                     "Six", "Seven", "Eight", "Nine", "Ten")
theDF
rownames(theDF)
rownames(theDF) <- NULL
rownames(theDF)
