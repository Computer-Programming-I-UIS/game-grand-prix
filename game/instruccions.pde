void instructions() {
  background(255);
  foto = loadImage("instruc.png");
  image(foto, 0, 0);
  fill(255);
  textSize(25);
  text(" INSTRUCCIONS:", 0, 30);
  text("Go", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490) {
    opc=0;
    beach_theme.loop();
    menu_theme.stop();
  }
  p1.move();
  p1.caida();

  delay(200);
}

void cambio() {
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

void score() {
  textSize(25);
  text("Score:", 0, 30);
  text(nf(count+bonus), 80, 30);
}
