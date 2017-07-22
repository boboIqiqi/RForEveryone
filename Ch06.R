#导入CVS

#tomato <- read.table(file = "data/TomatoFirst.csv", header = TRUE, sep = ",")
tomato <- read.table("data/TomatoFirst.csv", header = TRUE, sep = ",")

tomato

head(tomato)

#下面主要介绍一下 stringsAsFactors这个选项

x <- 10:1
y <- -4:5
q <- c("Hotkey", "Football", "Baseball", "Curling", "Rugby", 
       "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")

theDF <- data.frame(First = x, Second = y, Sport = q, stringsAsFactors = FALSE)
theDF$Sport

theDF <- data.frame(First = x, Second = y, Sport = q)
theDF$Sport
