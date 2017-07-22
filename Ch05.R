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

#查看列表框
head(theDF)   #head只会显示表头和前6行数据
head(theDF, n = 7)
tail(theDF)  #tail显示表头和结尾的5行数据
class(theDF)

#引用列k表框中的内容,可以用$也可以和[]
theDF$Sport   #$只能和名称配对使用，不能和数字下标一起使用
theDF[3,2]  #注意R的下标是从1开始数的
theDF[3, 2:3]
theDF[c(3,5),2]
theDF[c(3,5), 2:3]

#为了访问一整行，可以指定行而指定任何列;访问列也是
theDF[ , 3]
theDF[, 2:3]
theDF[2,]
theDF[2:4, ]
theDF[, c("First", "Sport")] #列向量可以通过名称参数来指定
theDF[,"Sport"]

#各种返回值类型不同
class(theDF[,"Sport"])   #注意这里是一个factor
theDF["Sport"]
class(theDF["Sport"])
theDF[["Sport"]]

#使用单方括号时，为了确保输出一个单列的数据框，有第三个参数：drop=FALSE
#通过列数指定某列时，这些也可以使用
theDF[,"Sport", drop=FALSE]
theDF["Sport", drop=FALSE]  #这样写会有Warning

theDF[,3,drop = FALSE]
class(theDF[,3,drop = FALSE])

### model.matrix这里没有看懂

# 5.2列表
#列表可以保存任意相同类型或者不同类型的对象
list(1,2,3)
list(c(1,2,3))
(list3 <- list(c(1,2,3), 3:7))
list(theDF, 1:10)
list5 <- list(theDF, 1:10, list3)
list5

#像数据框一样，列表也可以有名字。列表中的一个元素都可以有唯一的名称
names(list5)
names(list5) <- c("data.frame", "vector", "list")
names(list5)
list5

#创建列表时就可以给名字
list6 <- list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)
list6

#还可以利用vector创建一个具有一定长度的空列表
(emptyList <- vector(mode = "list", length = 4))

#访问列表元素
list5[1]
list5[[1]]  #双方括号访问列表中的单个元素
list5[["data.frame"]]

list5[[1]]$Sport
list5[[1]][3]   #注意这里跟上面的那个不一样,如果要使用方括号，要使用两个方括号,或者加一个,
list5[[1]]["Sport"]
list5[[1]][,"Second"]

list5[[1]][,"Second", drop = FALSE]  #最稳妥的方法是这个

length(list5)
list5[4] <- 2
length(list5)
list5[["NewElement"]] <- 3:6
length(list5)
names(list5)
list5


#矩阵的使用
##矩阵与数据框有点相似，但是不同列的数据也必须相同类型
A <- matrix(1:10, nrow = 5)
B <- matrix(21:30, nrow = 5)
C <- matrix(21:40, nrow = 2)

A
A[,1]   #向量没有横向量与列向量之分，都是横向量
B
C

nrow(A)
ncol(A)
dim(A)
A + B
A * B
A == B
A %*% t(B) #矩阵乘法与转置
colnames(A)

#矩阵的行列的名称
colnames(A)
rownames(A)
(colnames(A) <- c("Left", "Right"))
(rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th"))
A

colnames(B)
rownames(B)
colnames(B) <- c("First", "Second")
rownames(B) <- c("One", "Two", "Three", "Four", "Five")
B

colnames(C)
rownames(C)
#有两个特殊的向量,letters和LETTERS,分别由小写字母和大写字母组成
colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top", "Bottom")
C

t(A)
A %*% C


#数组
#数组和矩阵最主要的不同是，矩阵被限制为两维，而数组可以有任意维数

theArray <- array(1:12, dim = c(2,3,2))
theArray
theArray[1,,]
theArray[1,,1]
theArray[,,1]
