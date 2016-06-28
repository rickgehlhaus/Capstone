library(data.table)
library(bit64)
library(dplyr)
library(ggplot2)
set.seed(11)
tran <- fread("transactions.csv", nrows = 100000)
str(tran)
p <- ggplot(tran, aes(x = purchasequantity, y = purchaseamount)) +
  geom_point() +
  ggtitle("explore")
p + theme_economist() + scale_colour_economist()
