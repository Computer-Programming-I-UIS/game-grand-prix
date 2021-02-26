void story1 () {
  background(255);
  image(s1, 150, 0, 626, 626);
  fill(0);
  textSize(25);
  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=10;
  }
  delay(200);
}

void story2() {
  background(255);
  image(s2, 150, 0, 626, 626);

  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=11;
  }
  delay(200);
}

void story3() {
  background(0);
  image(s3, 0, 0);
  fill(255);
  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=12;
  }
  delay(200);
}

void story4() {
  background(0);
  image(s4, 0, 0);
  fill(255);
  text("NEXT", 900, 515);
  if (mousePressed && mouseX>900 && mouseX<965 && mouseY<515 && mouseY>490) {
    opc=6;
  }
  delay(200);
}
