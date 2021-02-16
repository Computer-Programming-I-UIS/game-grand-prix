import processing.sound.*;
SoundFile beach_theme;

PImage beach, forest, city, bike, corna,prize;
int maxIm = 2;
PImage [] person = new PImage[maxIm];
int i, j=1066;

Person p1;

float gravedad = 0.4;
float speed = 0;
int imageIndex=0;
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
//  beach_theme.play();
  
 p1 = new Person(100,height-200,160,160);

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
  
  for(int i = 0; i < person.length; i++){
     person[i] = loadImage("person"+ i +".png");
  }
}

void draw() {

  b.display();
  cor.display();
  p.display();
  p1.move();
  p1.caida();

  //f.display();

  //c.display();
}
