def setup():
  size(200,200)


def draw():
  background(0)
  ellipse(10,10,100,100)
  if mouseX > 20:
    fill(127)
    rect(50,50,30,30)
