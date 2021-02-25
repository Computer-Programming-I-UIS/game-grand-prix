void story1 () {
  background(255);
  image(s1, 150, 0, 626, 626);
  fill(0);
  textSize(25);
  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=10;
  }
  delay(100);
}

void story2() {
  background(255);
  image(s2, 150, 0, 626, 626);
  
  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=0;
  }
  delay(100);
}

void story3() {
}

void story4() {
}
