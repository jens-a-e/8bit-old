
int X = 0;
int Y = 0;

static int rect_size = 50;

String[] names = {
  "Jens",
  "Hermann",
  "Ben",
  "Ling",
  "Fei",
  "Arved",
  "Jan"
};

void setup() {
  noStroke();
  size(3*rect_size,names.length*rect_size);
  background(0);
}

void printByte(int data) {
  print(data + ":\t");
  for (int i=7;i>=0;i--) {
    print(((data & 0xff) >> i ) & 0x01);
  }
  print("\t");
}

/* fwrite proxy to draw things */
void fwrite(String data, int size, int num_elemts) {
  println(data);
  byte[] bytes = null;
  try {
    bytes = data.getBytes("US-ASCII");
    for(int b: bytes) {
      printByte(b);
    }
    println();
  } catch(Exception e) {
    return;
  }
  int num_colors = bytes.length / 3;
  println("Number of colors:\t"+ num_colors);
  int shift = 1;
  for(int i=0; i<num_colors; i++) {
    draw_color(color(bytes[i*3+0] << shift,bytes[i*3+1]<< shift,bytes[i*3+2] << shift));
  }
  X = 0;
  Y+=rect_size;
}

void draw_color(color c) {
  fill(c);
  rect(X,Y,rect_size,rect_size);
  X+=rect_size;
}

void draw()
{
  for(String name: names) {
    fwrite(name,1,name.length());
  }
  noLoop();
}
