###Script for subsetting Bangor corpus for experimental stimuli in use in prediction study. Started on 9/20/16

library(car)
library(plyr)
library(reshape2)

##setwd
setwd("~/Dropbox/Experiments/CS Corpus Prediction/")

test <- read.delim("BangorCorpus.txt")

head(test, 10)
tail(test, 10)

cs_test <- subset(test, Lang == "CS")

write.csv(cs_test,"CS_only_Bangor.csv", row.names = F)
