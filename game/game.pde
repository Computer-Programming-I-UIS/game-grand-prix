/******************************************************************************
 Autores:        Gerson Sanchez
                 Santiago Caballero
 *******************************************************************************/

import processing.sound.*;
SoundFile beach_theme;
SoundFile menu_theme;

PImage beach, forest, city, bike, corna, prize, menu;
PImage water, mask, death, s1, s2, s3, s4, next, next2;
PImage foto, foto2, foto3;
PImage text1;
int maxIm = 9;
PImage [] person = new PImage[maxIm];
int opc=9, count, bonus;
color b1, b2, b3, b4, l1, l2, l3, l4;


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

  water = loadImage("data/bonus2.png");
  mask = loadImage("data/bonus3.png");
  death = loadImage("data/death.png");

  s1 = loadImage("data/s1.jpg");
  s2 = loadImage("data/s2.jpg");
  s3 = loadImage("data/s3.jpg");
  s4 = loadImage("data/s4.jpg");

  menu_theme.play();
  beach_theme.loop();
}

void draw() {

  switch(opc) {
  case 0: //menu
    background(0);
    image(menu, 185, 0);
    boton();
    count =0;
    bonus=0;
    p1.x = 0;
    cor.x =1000;
    break;

  case 1: //lvl1
    //beach_theme.pause();
    b.display();
    cor.v = 12;
    cor.covid();
    p.clean();
    p1.move();
    p1.caida();
    score();
    cambio();
    float distancia = dist(p1.centroX, p1.centroY, cor.centroX, cor.centroY);
    if (distancia < p1.radio+cor.radio)
      opc = 7;
    else 
    count++;


    float distB1 = dist(p1.centroX, p1.centroY, p.centroX, p.centroY);
    if (distB1 < p1.radio+p.radio) {
      bonus++;
    }
    println(bonus);

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
      opc = 7;
    else 
    count++;

    float distB2 = dist(p1.centroX, p1.centroY, p.centroX2, p.centroY2);
    if (distB2 < p1.radio+p.radioB2) {
      bonus++;
    }
    println(bonus);

    break;

  case 3:
    c.display();
    cor.Death();
    p.mask_();
    p1.move();
    p1.caida();
    score();
    float dist3 = dist(p1.centroX, p1.centroY, cor.centroX3, cor.centroY3);
    if (dist3 < p1.radio+cor.radio) 
      opc = 7;
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
  case 9:
    story1();
    beach_theme.stop();
    break;
  case 10:
    story2();
    break;
  case 11:
    story3();
    break;
  case 12:
    story4();
    break;
  }
}
