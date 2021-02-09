class beach {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  beach (PImage b, float Y) {
    y=Y;
    beach = b;
  }

  void display() {

    x-=v;
    x_2-=v;

    image(beach, x, y+260, width+20, beach.height+65);
    image(beach, x_2, y+80, width+60, beach.height+65);

    if ( x+beach.width <=  0) {
      x = width;
    }
    if (x_2+beach.width <=0) {
      x_2=width;
    }
  }
}
