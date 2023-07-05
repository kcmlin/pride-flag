#######################################
# Practice plotting a pride flag
#
# Katherine Schaughency
# created: 4 July 2023
#-------------------------------------#
# Reference: https://youtu.be/mk8k7_3SJxY
#######################################

#------------------------------------#
# load R package

library(tidyverse)
library(ggplot2)

#------------------------------------#
# set working directory

setwd("/Users/katherineschaughency/Documents/GitHub/pride-flag/")

#------------------------------------#
# create a data frame to link the flag colors

data <- data.frame(row.num = c("row 1","row 2","row 3","row 4","row 5","row 6"),
                   flag.colors = c("purple","blue","darkgreen","yellow","orange","red"))

#------------------------------------#
# plot the flag

ggplot(data, aes(y = row.num, fill= row.num)) +
  geom_bar(width = 1, show.legend = FALSE) +
  scale_fill_manual(values = data$flag.colors) +
  theme_void()

#------------------------------------#
# method 2: plot the flag using base R

flag.data.frame=c(1,1,1,1,1,1)

barplot(matrix(flag.data.frame),col=rainbow(6),axes=FALSE)
