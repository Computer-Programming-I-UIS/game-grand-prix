class corona {
  PImage crona;
  float y;
  int space = width;
  int x = width;
  float v = 6;
  corona (PImage c19, float Y) {
    y=Y;
    crona = c19;
  }

  void display() {
    
    
    x -= v;
    image(crona,x,y);
    
    if ( x <=  0) {
      x =int(random(width, width+(width/2)));
      
    }
    
  }
}
