void creditos() {
  background(255, 0, 0);
  textSize(25);
  text(" Fondos:", 0, 30);
  //textAlign(LEFT);
  text(" portada:https://images.app.goo.gl/ugxj6GjpQDgkVYU86 \n playa: https://images.app.goo.gl/6bf3dKq6m1AaZ78S7 \n bosque: https://images.app.goo.gl/bhGmH2H5DzqEyBWMA \n ciudad:https://images.app.goo.gl/QeH57Vfi65iMwqgJ8 \n carretera:https://images.app.goo.gl/KzT2nVJfhNqFSaMe6 ", 0, 70);
  text(" Sprites:", 0, 270);
  text(" sprite:https://images.app.goo.gl/DVHp2SDSHe8YW5Fi8 \n coronavirus: https://images.app.goo.gl/djtH2gsxYfberzMM9 \n bonus 1: https://images.app.goo.gl/gXcSnWV5jEk8QpFU6 \n bonus 2: https://images.app.goo.gl/NUNyVC6UetoVPgxH7 ", 0, 315);
  text(" Musica:", 0, 480);
  text(" https://youtu.be/0hEYvdMoF2g", 0, 520);
  text(" Creado por: Gerson Sanchez y Santiago Caballero", 0, 580);
  text("EXIT", 900, 515);
  if (mousePressed && mouseX>870 && mouseX<950 && mouseY<530 && mouseY>490){
    opc=0;
  }
}
