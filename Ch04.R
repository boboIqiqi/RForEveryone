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
