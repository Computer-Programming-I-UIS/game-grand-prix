class Person{
 float y;
 int x,a,h;
  Person(int tx,float ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }


  void move(){
    if(keyPressed && key == CODED){
      if(keyCode == RIGHT&&keyCode != LEFT){
        x += 20;
        image(person[imageIndex],x,y,a,h);
        imageIndex = (imageIndex+1)% person.length;
      }
      if(keyCode == LEFT&&keyCode != RIGHT){
       x -= 20;       
       image(person[imageIndex],x,y,a,h);
       imageIndex = (imageIndex+1)% person.length;
      }
      if(keyCode == UP){ 
         if(y == height-200){
          y = y -150;        
          image(person[imageIndex],x,y,a,h);
        }
        image(person[imageIndex],x,y,a,h);
      }
    }
    if(keyCode == DOWN){
      image(person[imageIndex],x,y,a,h);
    }
    
      x = constrain(x,0,width-a);
      
      image(person[imageIndex],x,y,a,h); 
      
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
