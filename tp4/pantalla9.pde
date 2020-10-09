void muestraPantalla9() {
  imagenFondo();
  botonesCircu(550, 550, 25);
  if (nieve==false) {
    botonesCircu(width/3, 50, 20);
  }
  if (nieve==true) {
    botonesCircu(50, 550, 25);
  }
}
