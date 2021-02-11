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

    image(beach, x, y, width+20, beach.height);
    image(beach, x_2, y, width+20, beach.height);
    
    frameRate(100);

    if ( x+beach.width <=  0) {
      x = width;
    }
    if (x_2+beach.width <=0) {
      x_2=width;
    }
  }
}
