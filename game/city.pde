class city {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  city (PImage c, float Y) {
    y=Y;
    city = c;
  }

  void display() {

    x-=v;
    x_2-=v;

    image(city, x, y);
    image(city, x_2, y);
        frameRate(55);


    if ( x+city.width <=  0) {
      x = width;
    }
    if (x_2+city.width <=0) {
      x_2=width;
    }
  }
}
