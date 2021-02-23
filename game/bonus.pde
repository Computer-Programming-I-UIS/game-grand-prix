class prize {
  PImage clean,face;
  float y;
  int space = width;
  int x = width;
  float v = 20;
  prize (PImage pr, float Y) {
    y=Y;
    clean = pr;
  }

  void clean() {
    x -= v;
    image(clean, x, y,40,100);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }

  }
  void water(){
      x -= v;
    image(water, x, y);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }
  
  }
  
}
