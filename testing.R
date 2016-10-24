library(shiny)
library(ggplot2)
library(stringr)

dat <- read.csv('Advertising.csv', row.names = 1) 
sales = dat$Sales

#textInput(inputId = "myname", label = "Name:", value = "Gaston")
#names = reactive(subset(babynames, name == input$myname))
textInput(inputId = "var", label = "Advertising method:", value = "TV")
var = reactive(dat$input$var)

#renderPlot(
#  ggplot(data = names(), aes(x = year, y = n)) +
#    geom_line(aes(color = sex), size = 1.5) + 
#    theme_bw()
#)

renderPlot(
  plot(var(), sales, pch = 19, col = "#8e8f94", xlab = var(), ylab = "Sales")
  abline(lm(sales~var()), col = "#5679DF", lwd = 3)
  segments(var(), sales, var(), predict(lm(sales~var())), col='red')
)


