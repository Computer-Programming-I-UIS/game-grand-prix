class corona {
  PImage prze;
  float y;
  int space = width;
  int x = width;
  float v = 6;
  corona (PImage p, float Y) {
    y=Y;
    prze = p;
  }

  void display() {
    
    
    x -= v;
    image(prze,x,y);
    
    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
      
    }
    
  }
}
