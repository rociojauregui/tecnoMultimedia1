void muestraPantalla1() {
  imagenFondo();
  //----------------------------------[  texto  ]

  textSize(30);
  fill(0);
  textFont(laFuenteKeWaUsar);
  textSize(80);
  text( ") : )", 250, 323);

  pushStyle();
  textFont(laFuenteKeWaUsar2);
  textSize(60);
  textAlign(CENTER);
  text("c r e d i t o s", 300, 400);
  popStyle();

  //----------------------------------[  botones ]
  //grandes
  if (estado==":(") {
    botonesCircu(275, 300, 50);
  }
  if (estado==":)") {
    botonesCircu(325, 300, 50);
  }
  //chiquitos
  if (estado == ":)" || estado == ":(") {
    botonesCircu (50, 50, 25);
    botonesCircu (50, 550, 25);
    botonesCircu (550, 50, 25);
    botonesCircu (550, 550, 25);
  }
}
