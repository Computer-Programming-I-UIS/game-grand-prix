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


  void move(){
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
      radio = a*0.8;
      //circle(centroX,centroY,a*0.8);
      
    }

  void caida(){

     y = y + speed;
     speed = speed + gravedad;
 
     if(y>height-200){
       y = height-200;
       speed = 0;
     }
     
  } 
}
