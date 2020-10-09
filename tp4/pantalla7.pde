void muestraPantalla7() {
  imagenFondo();
  pushStyle();
  noStroke();
  fill(arregloColor[4], 100); 
  for (int radio = 0; radio<=7; radio++) {  
    ellipse(300, 270, radio*50, radio*50);
  }
  popStyle();
  image(cangrejo7, 0, 0);
  botonesCircu(300, 50, 25);
}
