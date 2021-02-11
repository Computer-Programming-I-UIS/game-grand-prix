PImage beach,forest,city, bike;
int i, j=1066;

beach b;
forest f;
city c;

void setup() {
  size(1066, 600);
  
  beach = loadImage("data/playa.png");
  b = new beach(beach, 0);
  
  forest = loadImage("data/bosque.jpg");
  f = new forest(forest,0);
  
  city = loadImage("data/ciudad.png");
  c = new city(city,0);
  
  //bike = loadImage("data/animated_bike.gif");
}

void draw() {

  b.display();
  
  //f.display();
  
  //c.display();



}
