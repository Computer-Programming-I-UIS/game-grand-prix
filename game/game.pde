/******************************************************************************
Autores:        Gerson Sanchez
                Santiago Caballero
*******************************************************************************/

import processing.sound.*;
SoundFile beach_theme;
SoundFile menu_theme;

PImage beach, forest, city, bike, corna, prize, menu;
PImage water, death;
PImage foto, foto2, foto3;
int maxIm = 9;
PImage [] person = new PImage[maxIm];
int opc=0, count;
color b1, b2, b3, l1, l2, l3;


float gravedad = 0.4;
float speed = 0;
int imageIndex=0;

beach b;
forest f;
city c;
corona cor;
prize p;
Person p1;
//water fp;
void setup() {
  size(1000, 600);

  menu = loadImage("new menu.jpg");
  menu_theme = new SoundFile(this, "data/theme.wav");

  beach = loadImage("data/playa.png");
  beach.resize(width, height);
  beach_theme = new SoundFile(this, "data/bTheme.wav");

  foto = loadImage("instruc.png");
  foto2 = loadImage("gameover.png");
  foto3 = loadImage("winn.png");

  p1 = new Person(100, height-200, 160, 160);
  for (int i = 0; i < person.length; i++) {
    person[i] = loadImage("person"+ i +".png");
  }

  b = new beach(beach, 0);

  forest = loadImage("data/bosque.jpg");
  forest.resize(width, height);
  f = new forest(forest, 0);

  city = loadImage("data/ciudad.png");
  city.resize(width, height);
  c = new city(city, 0);

  corna = loadImage("data/corona.png");
  cor = new corona(corna, 470);

  prize = loadImage("data/bonus.png");
  p = new prize(prize, 300);

  water = loadImage("data/bonus1 (2).png");
  death = loadImage("data/death.png");

  switch (opc) {
  case 0:
    //beach_theme.play();
    //menu_theme.play();
    break;
  case 1:
    menu_theme.pause();
    break;
  case 3:
    break;
  }
}

void draw() {

  switch(opc) {
  case 0: //menu
    background(0);
    image(menu, 185, 0);
    boton();
    p1.x = 0;
    cor.x =600;
    break;

  case 1: //lvl1
    //beach_theme.pause();
    b.display();
    cor.covid();
    p.clean();
    p1.move();
    p1.caida();
    score();
    cambio();
    float distancia = dist(p1.centroX, p1.centroY, cor.centroX, cor.centroY);
    if (distancia < p1.radio+cor.radio)
      opc = 0;
    else 
    count++;



    break;

  case 2:
    //beach_theme.pause();
    f.display();
    cor.sars();
    p.water();
    p1.move();
    p1.caida();
    score();
    cambio();
    float dist2 = dist(p1.centroX, p1.centroY, cor.centroX, cor.centroY);
    if (dist2 < p1.radio+cor.radio) 
      opc = 0;
    else 
    count++;


    break;

  case 3:
    c.display();
    cor.Death();
    p.water();
    p1.move();
    p1.caida();
    score();
    float dist3 = dist(p1.centroX, p1.centroY, cor.centroX3, cor.centroY3);
    if (dist3 < p1.radio+cor.radio) 
      opc = 0;
    else 
    count++;
    break;

  case 4:
    background(255);
    break;
  case 5:
    background(255);
    creditos();
    break;
  case 6:
    background(0);
    instructions();
    break;
  case 7:
    background(0);
    gameover();
    break;
  case 8:
    background(0);
    winner();
    break;
  }
  //println(count);
}

void cambio() {
  if (count > 1000) {
    opc =2;
  }
  if (count > 2000) {
    opc =3 ;
  }
  if (count > 6000) {
    opc =8; 
  }
  //println(count);
}

void score() {
  textSize(25);
  text("Score:", 0, 30);
  text(nf(count), 80, 30);
}
