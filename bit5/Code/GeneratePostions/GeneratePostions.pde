

float[] x_pos;
boolean doRandom = false;

void setup() {
  size(640, 320); 

  x_pos = new float[200];

  for (int i=0; i < x_pos.length; i++) {
    x_pos[i] =  map(i, 0, x_pos.length, 0, width);
  }
}

void draw() {

  background(0);

  float x = x_pos[ frameCount % x_pos.length ]; 

  ellipse(x, height/2, 100, 100);
}

void keyPressed() {
  doRandom = !doRandom;

  if (doRandom) {
    for (int i=0; i < x_pos.length; i++) {
      x_pos[i] =  random(0, width);
    }
  } else {
    for (int i=0; i < x_pos.length; i++) {
      x_pos[i] =  map(i, 0, x_pos.length, 0, width);
    }
  }
}

