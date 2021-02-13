import processing.sound.*;
SoundFile beach_theme;

PImage beach, forest, city, bike, corna,prize;
int i, j=1066;

beach b;
forest f;
city c;
corona cor;
prize p;

void setup() {
  size(1066, 600);

  beach = loadImage("data/playa.png");
  beach.resize(width, height);
  beach_theme = new SoundFile(this, "data/bTheme.wav");
  beach_theme.play();

  b = new beach(beach, 0);

  forest = loadImage("data/bosque.jpg");
  f = new forest(forest, 0);

  city = loadImage("data/ciudad.png");
  city.resize(width, height);
  c = new city(city, 0);

  corna = loadImage("data/corona.png");
  cor = new corona(corna, 470);
  
  prize = loadImage("data/bonus1 (2).png");
  p = new prize(prize, 300);
}

void draw() {

  b.display();
  cor.display();
  p.display();

  //f.display();

  //c.display();
}
