void muestraPantalla6() {
  image(fotoPantalla6, 0, 0, 600, 600); 
  ellipse(50, 50, 50, 50);
  pushStyle();
  float disTan=dist(mouseX, mouseY, 50, 50);
  if (disTan<radio25 ) {
    fill(0, 90);
    ellipse(50, 50, 50, 50);
  }
  popStyle();
}
