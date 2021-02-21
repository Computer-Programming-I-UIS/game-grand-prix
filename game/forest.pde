class forest {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  forest (PImage f, float Y) {
    y=Y;
    forest = f;
  }

  void display() {

    x-=v;
    x_2-=v;

    image(forest, x, y);
    image(forest, x_2, y);
    
    frameRate(80);
    if ( x+forest.width <=  0) {
      x = width;
    }
    if (x_2+forest.width <=0) {
      x_2=width;
    }
  }
}
