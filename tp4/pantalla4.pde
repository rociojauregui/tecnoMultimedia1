void muestraPantalla4() {
  imagenFondo();
  botonesCircu(550, 550, 25);
  if (espada == false) {
    botonesCircu(135, 388, 25);
  }
  if (espada==true && caidaEspada>=600) {
    botonesCircu(50, 550, 25);
  }
}
