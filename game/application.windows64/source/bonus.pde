class prize {
  PImage clean, face;
  float y;
  int x = width;
  float v = 20;
  float centroX, centroY;
  float centroX2, centroY2;
  float centroX3, centroY3;
  float radio=0.2, radioB2 = 0.1, radioB3 =0.1;
  prize (PImage pr, float Y) {
    y=Y;
    clean = pr;
  }

  void clean() {
    x -= v;
    image(clean, x, y, 40, 100);
    centroX = x;
    centroY = y;
    circle(centroX, centroY, radioB2);


    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }
  }
  void water() {
    x -= v;
    image(water, x, y+20);
    centroX2 = x+80/2;
    centroY2 = y;
    circle(centroX2, centroY2, radioB3);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }
  }

  void mask_() {
    x -= v;
    image(mask, x, y+80);
    centroX3 = x+118/2;
    centroY3 = y;
    circle(centroX3, centroY3, radio);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
    }
  }
}
