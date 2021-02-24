void winner(){
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
