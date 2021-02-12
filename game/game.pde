import processing.sound.*;
SoundFile beach_theme;

PImage beach, forest, city, bike, corna;
int i, j=1066;

beach b;
forest f;
city c;
corona cor;

void setup() {
  size(1066, 600);

  beach = loadImage("data/playa.png");
  beach.resize(width, height);
  beach_theme = new SoundFile(this, "data/bTheme.wav");

  b = new beach(beach, 0);

  forest = loadImage("data/bosque.jpg");
  f = new forest(forest, 0);

  city = loadImage("data/ciudad.png");
  city.resize(width, height);
  c = new city(city, 0);

  corna = loadImage("data/corona.png");
  cor = new corona(corna, 470);
}

void draw() {

  b.display();
  cor.display();
  beach_theme.play();

  //f.display();

  //c.display();
}
