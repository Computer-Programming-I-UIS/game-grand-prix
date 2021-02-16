import processing.sound.*;
SoundFile beach_theme;

PImage beach, forest, city, bike, corna, prize, menu;
int maxIm = 2;
PImage [] person = new PImage[maxIm];
int opc=0;
color b1, n1;


float gravedad = 0.4;
float speed = 0;
int imageIndex=0;



beach b;
forest f;
city c;
corona cor;
prize p;
Person p1;
void setup() {
  size(1000, 600);

  menu = loadImage("new menu.jpg");

  beach = loadImage("data/playa.png");
  beach.resize(width, height);
  beach_theme = new SoundFile(this, "data/bTheme.wav");

  p1 = new Person(100, height-200, 160, 160);
  for (int i = 0; i < person.length; i++) {
    person[i] = loadImage("person"+ i +".png");
  }

  b = new beach(beach, 0);

  forest = loadImage("data/bosque.jpg");
  f = new forest(forest, 0);

  city = loadImage("data/ciudad.png");
  city.resize(width, height);
  c = new city(city, 0);

  corna = loadImage("data/corona.png");
  cor = new corona(corna, 470);

  prize = loadImage("data/bonus.png");
  p = new prize(prize, 300);

  switch (opc) {
  case 0:
    beach_theme.play();
    break;
  case 1:
    beach_theme.play();
    break;
  case 3:
    break;
  }
}

void draw() {

  switch(opc) {
  case 0:
    background(0);
    image(menu, 185, 0);
    boton();
    break;

  case 1:
    b.display();
    cor.display();
    p.display();
    p1.move();
    p1.caida();
    break;

  case 2:

    //f.display();

    break;

  case 3:
    //c.display();
    break;
  }
}
