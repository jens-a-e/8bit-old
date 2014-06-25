"""
  Simple Clock Example for 8bit Seminar (bit 5)
  Muthesius Kunsthochschule Sommersemester 2014
"""

def setup():
    size(640,320)
    
def draw():
    smooth()
    strokeCap(SQUARE)
    background(255)
    h = map(hour(),  0, 12, 0, TWO_PI)
    m = map(minute() , 0, 59, 0, TWO_PI)
    s = map(second(), 0, 59, 0, TWO_PI)
    
    translate(width/2, height/2)
    rotate(-HALF_PI)
    
    zeichneZeiger(s, 150, 255, 0,   0)
    zeichneZeiger(m, 120, 255, 255,   0)
    zeichneZeiger(h,  60, 0,   0, 255)

def zeichneZeiger(rotation, length, red, green, blue):
    degrees_rotation = degrees(rotation)
    for i in range(0,degrees_rotation):
        pushMatrix()
        rotate(radians(i))
        strokeWeight(1)
        stroke(red,green,blue, 127)
        l = map( rotation, 0, TWO_PI, 0, length)
        line(0, 0, l, 0)
        popMatrix()
    
    

