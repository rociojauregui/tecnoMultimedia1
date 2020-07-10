void muestraPantalla10() {
  image(fotoPantalla10, 0, 0, 600, 600); 
  ellipse(550, 50, 50, 50);
  //ellipse(225, 115, 50, 50);
  pushStyle();
  strokeWeight(3);
  stroke(255);
  ellipse(550, 50, 50, 50);
  popStyle();
  pushStyle();
  imageMode(CENTER);
  float distTi=dist(mouseX, mouseY, 225, 115);
  if (distTi<radio50) {
    image(santaRita, 250, 125, 500, 500);
  }
  popStyle();
  pushStyle();
  float disTancia=dist(mouseX, mouseY, 550, 50);
  if (disTancia<radio25) {
    stroke(255);
    fill(255, 90);
    ellipse(550, 50, 50, 50);
  }
  popStyle();
}
