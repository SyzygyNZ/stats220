library(magick)
Me <- c("Me")

balloon <- image_read('https://imgflip.com/s/meme/Running-Away-Balloon.jpg')%>%
image_scale("595")%>%
image_scale("x800")%>%
  image_annotate("Video \ngames", size = 30, gravity = "southwest", color = "black")%>%
  image_annotate(Me, size = 30, location = "+50+300", color = "black")%>%
  image_annotate("Completing this\n   assignment", size = 25, location = "+400+150", color = "black")
stats220 <- image_blank(595, 200, color = "white")%>%
  image_annotate("                       Stats220 dmor941", size = 30)

meme <- c(balloon, stats220)
meme <- image_append(meme, stack = TRUE)
image_write(meme, "my_meme.png")


