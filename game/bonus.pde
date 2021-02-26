class prize {
  PImage clean,face;
  float y;
  int x = width;
  float v = 20;
  float centroX, centroY;
  float centroX3, centroY3;
  float radio=0.2, radioB2 = 160;
  prize (PImage pr, float Y) {
    y=Y;
    clean = pr;
  }

  void clean() {
    x -= v;
    image(clean, x, y,40,100);
    centroX = x;
    centroY = y;
    circle(centroX, centroY, radio);


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
