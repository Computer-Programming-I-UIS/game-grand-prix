class corona {
  PImage prze;
  float y;
  int space = width;
  int x = width;
  float v = 12;
  float centroX, centroY;
  float centroX3, centroY3;
  float radio, radioD = 160;
  //Constructor
  corona (PImage p, float Y) {
    this.y=Y;
    this.prze = p;
    this.radio = p.width/2;
  }

  void covid() {
    x -= v;
    image(prze, x, y);
    centroX = x + prze.width/2;
    centroY = y + prze.height/2;
    circle(centroX, centroY, radio);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)+12));
    }
  }

  void sars() {
    v=16;
    x -= v;
    image(prze, x, y, 100, 100);
    centroX = x + prze.width/2;
    centroY = y + prze.height/2;
    //circle(centroX,centroY,radio);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)+12));
    }
  }

  void Death() {
    v=25;
    x -= v;
    //noFill();
    image(death, x, 400);
    centroX3 = x + 160/2;
    centroY3 = y + (144/2)-70;
    //circle(centroX3,centroY3,radioD);

    if ( x <=  0) {
      x =int(random(width, width+(width/2)+12));
    }
    //println(centroX3);
  }
}
