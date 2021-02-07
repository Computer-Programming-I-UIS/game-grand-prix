PImage ciud, bike;
int i, j=1066;

ciud c;

void setup() {
  size(1066, 600);
  ciud = loadImage("data/fonfo.png");
  c = new ciud(ciud, 0);
  bike = loadImage("data/animated_bike.gif");
}

void draw() {

  //}

  c.display();

  //image(bike, width - 128, 600-128);

  for (j=1066; j<0; j--) {

    image(ciud, j, 0);
  }
}
