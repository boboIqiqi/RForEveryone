#字符数据
#R处理字符型数据有两种主要的方式：字符(character)和因子(factor)
#虽然表面上看起来两者很类似，但是处理起来完全不同j
x <- "data"
x
y <- factor("data")
y


#字符数据
#R处理字符型数据有两种主要的方式：字符(character)和因子(factor)
#虽然表面上看起来两者很类似，但是处理起来完全不同j
x <- "data"
x
y <- factor("data")
y

#赋值
x <- 2
x
y = 5
y

3 -> z
z
a <- b <- 7
assign("j",4)

#删除变量
rm(a)
rm(b)

#数据类型
#共四种
# - 数值型(numeric, integer)
# - 字符数据（character,factor,字符串）
# - 日期型（Date)或POSIXct(基于日期的)
# - 逻辑型(logical <- TRUE或FALSE)

# R语言是区分大小的语言

# 数值类型
x <- 5
is.numeric(x)
i <- 5L
is.integer(i)
is.numeric(i)
class(4L)
class(2.8)
4L * 2.8
class(5L)
class(2L)
class(5L/2L)

#字符数据
x <- "data"
x
y <- factor("data")
y

nchar(x)
nchar("hello")
nchar(3)
nchar(452)
nchar(y) #这一行会出错

#日期类型
date1 <- as.Date("2012-06-28")
date1
class(date1)
as.numeric(date1)  #自1970年1月1日以来的天数
#注意区分is和as

date2 <- as.POSIXct("2012-06-28 17:42")
date2

class(date2)
as.numeric(date2) #自1970年1月1日以来的秒数
class(date1)
class(as.numeric(date1))

# 逻辑型
TRUE * 5
FALSE * 5
k <- TRUE
class(k)
is.logical(k)
TRUE
T
class(T)
T <- 7
T
class(T)

2==3
2 < 3
2 <= 3
2 > 3
2 >= 3
"data" == "stats"
"data" < "stats"

# 4.4 向量
# 向量是一些元素的集合，所有的元素都是同一类型。
# R语言是矢量化的语言，这意味操作自动地应用于向量的每一个分量，不需要遍历向量的每个分量。
# 向量没有维数，这就意味着没有像列向量和行向量这样的东西。这些向量不像数学中的向量有行和列的区别

x <- c(1,2,3,4,5,6,7,8,10)
x
x * 3
x + 2
x - 3
x/4
x^2
sqrt(x)

1:10
10:1
-2:3
5:-7

x <- 1:10
y <- -5:4
x + y
x - y
x * y
x/y
x^y
length(x)
length(y)
length(x+y)

#下面是我自己的实验，确实只有行向量没有二维向量之说
x <- c(c(1,2),c(2,3))
x

#当处理两个不等长的向量时，较短的向量会循环补齐，其元素会按顺序重复，直到能和长向量的每一个元素相匹配。
#如果长向量的长度不是短向量的整数倍，就会给出警告
x <- 1:10
x + c(1,2)
x + c(1,2,3)

#逻辑向量
x <= 5
x > y
x < y
x <- 10:1
#x <- -10:-1  #这里一个测试，用来测试any和all
y <- -4:5
#逻辑操作函数
any(x < y)
all(x < y)

q <- c("Hockey", "Football", "Basketball", "Curling", "Rugby",
        "Lacrosse", "Basketball", "tennis", "Cricket", "Soccer")

nchar(q)
nchar(y)  #nchar对数值型计算长度，会计算位数
s = 1.5
nchar(s)
s = 1/3
nchar(s) #这个返回的是17，说明R只能精确到小数点后面15位


#获取向量元素用[]
x[1]   #获取单个元素
x[1:2]  #获取连续元素集
x[c(1,4)]  #获取不连续的元素集


#可以创建所有类型的向量，数值型、逻辑型、字符型还有其他类型
# 在向量创建过程中或创建之后，都可以给向量命名

c(One = "a", Tow = "y", Last = "r")

w <- 1:3
names(w) <- c("a", "b", "c")
w
w["a"]  #命完名之后，就可以按名称取了，相当映射

#因子向量
q2 <- c(q, "Hockey", "Lacrosse", "Hockey", "Water Polo" , "Hockey", "Lacrosse")
q2Factor <- as.factor(q2)
q2Factor
as.numeric(q2Factor) #将其转化为索引值

ff = factor(x=c("High scholl", "College", "Masters", "Doctorate"),
      levels = c("High scholl", "College", "Masters", "Doctorate"),
      ordered = TRUE)

ff2 = factor(x=c( "College", "High scholl","Masters", "Doctorate"),
      levels = c("High scholl", "College", "Masters", "Doctorate"),
      ordered = TRUE)
#函数levels()可以用来观察因子中有多少不同的levels。
levels(ff)
levels(ff2)

# ordered()可以创建有序因子


#函数tapply()的作用是对它第一个参数的组件中所包含的每个组应用一个参数三指定的函数。
m <- rep(1,length(q2))
tapply(m,q2,sum)


#查看函数帮助
? mean  #直接看函数的帮助

#查看单个操作符的帮助信息
? '+'
? ':'
? '=='
?'*'

#模糊查看函数的帮助
apropos("mea")

#NA和NULL
z <- c(1,2,NA,8,3,NA,3)
z
is.na(z)

zChar <- c("Hockey", NA, "Lacrosse")
zChar
is.na(z)

#NULL是没有任何东西，它不算准确的缺失，而是空白
#函数有时会返回NULL,其参数也可以是NULL。NA和NULL一个重要的区别是,NULL是最小的“原子”，其不能存在于向量中。
#如果在向量中使用，其自然就消失了
z <- c(1,NULL,3)
z
d <- NULL
is.null(d)
is.null(7)
is.null(q2)   #由于NULL不是向量的一部分，is.null自然也不是向量