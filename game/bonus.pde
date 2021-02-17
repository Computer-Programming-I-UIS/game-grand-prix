class prize {
  PImage crona;
  float y;
  int space = width;
  int x = width;
  float v = 20;
  prize (PImage pr, float Y) {
    y=Y;
    crona = pr;
  }

  void display() {


    x -= v;
    image(crona, x, y);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }

    //x = constrain(x,0,width-80);
  }
}
