void gameover(){
  background(255);
  foto2 = loadImage("gameover.png");
  image(foto2, 0, 0);
  fill(255);
  textSize(25);
  text("BACK", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
}
