void boton() { 
  Start();
  credits();
  intruccions();
  salida();
}

void Start() {      
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
void credits() {

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
void intruccions() {

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

void salida() {

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
