void muestraPantalla2() {
  imagenFondo();
  pushStyle();
  noFill();
  stroke (arregloColor[3]);
  strokeWeight(3);
  botonRect(10, 540, 200, 50);
  botonRect(270, 540, 50, 50);
  fill(arregloColor[0], 90);
  botonRect(385, 540, 200, 50);
  fill(255, 200, 0);
  textSize(30);
  text("volver", 70, 575);
  text("reiniciar", 435, 575);
  textSize(46);
  fill(255,200,0);
  text("iugeruaJ    oicoRocio    Jauregu",movim,50);
  text("iugeruaJ    oicoRocio    Jauregu",movi,50);
  popStyle();

}
