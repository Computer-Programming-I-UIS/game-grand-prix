void boton() { 
  Start();
}

void Start() {      
  fill(b1, 160);
  rect(375, 250, 250, 70, 10);
  fill(n1);
  textSize(30);
  text("Play", 500-30, 300-10);
  if ((mouseX>375)& (mouseX<375+250) && (mouseY>250) && (mouseY<250+70)) {
    b1=255;
    n1=0;
  } else {
    b1=0;
    n1=255;
  }
  if ((mouseX>375)& (mouseX<375+250) && (mouseY>250) && (mouseY<250+70) && (mousePressed==true)) {
    opc = 1;
    delay(500);
  }
}
