PImage beach,forest,city, bike;
int i, j=1066;

beach b;

void setup() {
  size(1066, 600);
  beach = loadImage("data/beach.png");
  b = new beach(beach, 0);
  //bike = loadImage("data/animated_bike.gif");
}

void draw() {

  //}

  b.display();

  //image(bike, width - 128, 600-128);

  for (j=1066; j<0; j--) {

    image(beach, j, 0);
  }
}
