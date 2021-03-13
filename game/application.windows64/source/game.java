import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class game extends PApplet {

/******************************************************************************
 Autores:        Gerson Sanchez
                 Santiago Caballero
 *******************************************************************************/


SoundFile beach_theme;
SoundFile menu_theme;

PImage beach, forest, city, bike, corna, prize, menu;
PImage water, mask, death, s1, s2, s3, s4, clasif;
PImage foto, foto2, foto3;
PImage text1;
int maxIm = 9;
PImage [] person = new PImage[maxIm];
int opc=9, count, bonus;
int b1, b2, b3, b4, l1, l2, l3, l4;


float gravedad = 0.4f;
float speed = 0;
int imageIndex=0;

beach b;
forest f;
city c;
corona cor;
prize p;
Person p1;
//water fp;
public void setup() {
  

  menu = loadImage("new menu.jpg");
  menu_theme = new SoundFile(this, "data/theme.wav");

  beach = loadImage("data/playa.png");
  beach.resize(width, height);
  beach_theme = new SoundFile(this, "data/bTheme.wav");

  foto = loadImage("inst.jpg");
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
  clasif = loadImage("data/800px-ESRB_2013_Everyone_Spanish_opt (1).png");

  menu_theme.play();
  beach_theme.loop();
}

public void draw() {

  switch(opc) {
  case 0: //menu
    background(0);
    image(menu, 185, 0);
    image(clasif ,185,600-150,100,150);
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
    
    float distB3 = dist(p1.centroX, p1.centroY, p.centroX3, p.centroY3);
    if (distB3 < p1.radio+p.radioB3) {
      bonus++;
    }
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
class Person{
 float y;
 float x,a,h;
 float centroX, centroY;
 float radio;
  Person(int tx,float ty,int ta, int th){
    this.x = tx;
    this.y = ty;
    a = ta;
    h = th;
  }


  public void move(){
    if(keyPressed && key == CODED){
      if(keyCode == RIGHT&&keyCode != LEFT){
        x += 20;
        //image(person[imageIndex],x,y,a,h);
        imageIndex = (imageIndex+1)% person.length;
      }
      if(keyCode == LEFT&&keyCode != RIGHT){
       x -= 20;       
       //image(person[imageIndex],x,y,a,h);
       imageIndex = (imageIndex+1)% person.length;
      }
      if(keyCode == UP){ 
         if(y == height-200){
          y = y -250;        
          //image(person[imageIndex],x,y,a,h);
        }
        //image(person[imageIndex],x,y,a,h);
      }
    }
    if(keyCode == DOWN){
      //image(person[imageIndex],x,y,a,h);
    }
    
      x = constrain(x,0,width-a);
      
      image(person[imageIndex],x,y,a,h); 
      noStroke();
      noFill();
      centroX = x+(a/2);
      centroY = y+(h/2);
      radio = a*0.8f;
      //circle(centroX,centroY,a*0.8);
      
    }

  public void caida(){

     y = y + speed;
     speed = speed + gravedad;
 
     if(y>height-200){
       y = height-200;
       speed = 0;
     }
     
  } 
}
class beach {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  beach (PImage b, float Y) {
    y=Y;
    beach = b;
  }

  public void display() {

    x-=v;
    x_2-=v;

    image(beach, x, y);
    image(beach, x_2, y);
    
   //frameRate(80);

    if ( x+beach.width <=  0) {
      x = width;
    }
    if (x_2+beach.width <=0) {
      x_2=width;
    }
  }
}
class prize {
  PImage clean, face;
  float y;
  int x = width;
  float v = 20;
  float centroX, centroY;
  float centroX2, centroY2;
  float centroX3, centroY3;
  float radio=0.2f, radioB2 = 0.1f, radioB3 =0.1f;
  prize (PImage pr, float Y) {
    y=Y;
    clean = pr;
  }

  public void clean() {
    x -= v;
    image(clean, x, y, 40, 100);
    centroX = x;
    centroY = y;
    circle(centroX, centroY, radioB2);


    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)));
    }
  }
  public void water() {
    x -= v;
    image(water, x, y+20);
    centroX2 = x+80/2;
    centroY2 = y;
    circle(centroX2, centroY2, radioB3);

    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)));
    }
  }

  public void mask_() {
    x -= v;
    image(mask, x, y+80);
    centroX3 = x+118/2;
    centroY3 = y;
    circle(centroX3, centroY3, radio);

    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)));
    }
  }
}
public void boton() { 
  Start();
  credits();
  intruccions();
  salida();
  
}

public void Start() {      
  fill(b1, 160);
  rect(375, 250, 250, 60, 20);
  fill(l1);
  textSize(30);
  text("Play", 500-30, 300-10);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250) && (mouseY<250+60)) {
    b1=255;
    l1=0;
  } else {
    b1=0;
    l1=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250) && (mouseY<250+60) && (mousePressed==true)) {
    opc = 1;
    delay(500);
  }
}
public void credits() {

  fill(b2, 160);
  rect(375, 250+80, 250, 60, 20);
  fill(l2);
  textSize(30);
  text("Credits", 500-50, 300+70);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+80) && (mouseY<250+60+80)) {
    b2=255;
    l2=0;
  } else {
    b2=0;
    l2=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+80) && (mouseY<250+80+60) && (mousePressed==true)) {
    opc = 5;
    delay(500);
  }
}
public void intruccions() {

  fill(b3, 160);
  rect(375, 250+160, 250, 60, 20);
  fill(l3);
  textSize(30);
  text("Intruccions", 430-10, 495-45);
  textAlign(LEFT);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+160) && (mouseY<250+60+160)) {
    b3=255;
    l3=0;
  } else {
    b3=0;
    l3=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+160) && (mouseY<250+60+160) && (mousePressed==true)) {
    opc = 6;
    delay(500);
  }
}

public void salida() {

  fill(b4, 160);
  rect(375, 250+(80*3), 250, 60, 20);
  fill(l4);
  textSize(30);
  text("Exit", 430+40, 495+35);
  textAlign(LEFT);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+(80*3)) && (mouseY<250+(80*3)+60)) {
    b4=255;
    l4=0;
  } else {
    b4=0;
    l4=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+(80*3)) && (mouseY<250+(80*3)+60) && (mousePressed==true)) {
    exit();
    //delay(500);
  }
}
class city {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  city (PImage c, float Y) {
    y=Y;
    city = c;
  }

  public void display() {

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
class corona {
  PImage prze;
  float y;
  int x = width;
  float v = 12;
  float centroX, centroY;
  float centroX3, centroY3;
  float radio, radioD = 160;
  //Constructor
  corona (PImage p, float Y) {
    this.y=Y;
    this.prze = p;
    this.radio = p.width/2;
  }

  public void covid() {
    x -= v;
    image(prze, x, y);
    centroX = x + prze.width/2;
    centroY = y + prze.height/2;
    circle(centroX, centroY, radio);

    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)+12));
    }
  }

  public void sars() {
    v=16;
    x -= v;
    image(prze, x, y, 100, 100);
    centroX = x + prze.width/2;
    centroY = y + prze.height/2;
    //circle(centroX,centroY,radio);

    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)+12));
    }
  }

  public void Death() {
    v=25;
    x -= v;
    //noFill();
    image(death, x, 400);
    centroX3 = x + 160/2;
    centroY3 = y + (144/2)-70;
    //circle(centroX3,centroY3,radioD);

    if ( x <=  0) {
      x =PApplet.parseInt(random(width, width+(width/2)+12));
    }
    //println(centroX3);
  }
}
public void creditos() {
  background(255, 0, 0);
  textSize(25);
  text(" Fondos:", 0, 30);
  //textAlign(LEFT);
  text(" portada:https://images.app.goo.gl/ugxj6GjpQDgkVYU86 \n playa: https://images.app.goo.gl/6bf3dKq6m1AaZ78S7 \n bosque: https://images.app.goo.gl/bhGmH2H5DzqEyBWMA \n ciudad:https://images.app.goo.gl/QeH57Vfi65iMwqgJ8 \n carretera:https://images.app.goo.gl/KzT2nVJfhNqFSaMe6 ", 0, 70);
  text(" Sprites:", 0, 270);
  text(" sprite:https://images.app.goo.gl/DVHp2SDSHe8YW5Fi8 \n coronavirus: https://images.app.goo.gl/djtH2gsxYfberzMM9 \n bonus 1: https://images.app.goo.gl/gXcSnWV5jEk8QpFU6 \n bonus 2: https://images.app.goo.gl/NUNyVC6UetoVPgxH7 ", 0, 315);
  text(" Musica:", 0, 480);
  text(" https://youtu.be/0hEYvdMoF2g", 0, 520);
  text(" Creado por: Gerson Sanchez y Santiago Caballero", 0, 580);
  text("EXIT", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
}
class forest {
  float y;
  int x=0;
  int x_2= width;

  float v = 7;
  forest (PImage f, float Y) {
    y=Y;
    forest = f;
  }

  public void display() {

    x-=v;
    x_2-=v;

    image(forest, x, y);
    image(forest, x_2, y);
    
    frameRate(80);
    if ( x+forest.width <=  0) {
      x = width;
    }
    if (x_2+forest.width <=0) {
      x_2=width;
    }
  }
}
public void gameover(){
  background(255);
  foto2 = loadImage("gameover.png");
  image(foto2, 0, 0);
  fill(255);
  textSize(25);
  text("BACK", 900, 515);
  textSize(40);
  text("Score:", 500, 515-55);
  text(nf(count+bonus), 550-20, 500);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
}
public void instructions() {
  background(255);
  foto = loadImage("data/inst.jpeg");
  image(foto, 0, 0);
  fill(255);
  textSize(25);
  //text(" INSTRUCCIONS:", 0, 30);
  text("Start", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490) {
    opc=0;
    beach_theme.loop();
    menu_theme.stop();
  }
  delay(200);
  p1.move();
  p1.caida();

  
}

public void cambio() {
  if (count == 0) {
    opc = 1;
  }
  if (count > 1000) {
    opc = 2;
  }
  if (count > 2000) {
    opc =3 ;
  }
  if (count > 6000) {
    opc = 8;
  }

  //println(count);
}

public void score() {
  textSize(25);
  text("Score:", 0, 30);
  text(nf(count+bonus), 80, 30);
}

  public void story1 () {
    background(0);
    image(s1, 180, 0, 626, 626);
    fill(255);
    textSize(25);
    text("NEXT", 900, 515);
    if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
      opc=10;
    }
    delay(200);
  }

  public void story2() {
    background(0);
    image(s2, 180, 0, 626, 626);

    text("NEXT", 900, 515);
    if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
      opc=11;
    }
    delay(200);
  }

  public void story3() {
    background(0);
    image(s3, 0, 0);
    fill(255);
    text("NEXT", 900, 515);
    if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
      opc=12;
    }
    delay(200);
  }

  public void story4() {
    background(0);
    image(s4, 0, 0);
    fill(255);
    text("NEXT", 900, 515);
    if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
      opc=6;
    }
    delay(200);
  }
public void winner(){
  background(255);
  foto3 = loadImage("winn.png");
  image(foto3, 0, 0);
  fill(255);
  textSize(25);
  text("EXIT", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
}
  public void settings() {  size(1000, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
