void boton() { 
  Start();
  credits();
  intruccions();
}

void Start() {      
  fill(b1, 160);
  rect(375, 250, 250, 70, 20);
  fill(l1);
  textSize(30);
  text("Play", 500-30, 300-10);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250) && (mouseY<250+70)) {
    b1=255;
    l1=0;
  } else {
    b1=0;
    l1=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250) && (mouseY<250+70) && (mousePressed==true)) {
    opc = 1;
    delay(500);
  }
}
void credits() {

  fill(b2, 160);
  rect(375, 250+100, 250, 70, 20);
  fill(l2);
  textSize(30);
  text("Credits", 500-45, 300+95);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+100) && (mouseY<250+70+80)) {
    b2=255;
    l2=0;
  } else {
    b2=0;
    l2=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+100) && (mouseY<250+80+70) && (mousePressed==true)) {
    opc = 5;
    delay(500);
  }
}
void intruccions() {

  fill(b3, 160);
  rect(375, 450, 250, 70, 20);
  fill(l3);
  textSize(30);
  text("Intruccions", 430, 495);
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+200) && (mouseY<250+270)) {
    b3=255;
    l3=0;
  } else {
    b3=0;
    l3=255;
  }
  if ((mouseX>375) && (mouseX<375+250) && (mouseY>250+200) && (mouseY<250+270) && (mousePressed==true)) {
    opc = 6;
    delay(500);
  }
}
