class corona {
  PImage prze;
  float y;
  int space = width;
  int x = width;
  float v = 8;
  float centroX, centroY;
  float radio;
  //Constructor
  corona (PImage p, float Y) {
    this.y=Y;
    this.prze = p;
    this.radio = p.width/2;
  }

  void display() {


    x -= v;
    image(prze, x, y);
    centroX = x + prze.width/2;
    centroY = y + prze.height/2;

    if ( x <=  0) {
      x =int(random(width, width+(width/2)+12));
    }

    //if ((Person.x > x+77)&& (Person.y > y ) && (Person.y < y+70)) {
    //  opc =4;
    //}
  }
}
