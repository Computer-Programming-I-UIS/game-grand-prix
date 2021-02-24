  void instructions() {
  background(255);
  foto = loadImage("instruc.png");
  image(foto, 0, 0);
  fill(255);
  textSize(25);
  text(" INSTRUCCIONS:", 0, 30);
  text("BACK", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
     p1.move();
    p1.caida();
}
