
float time=0.0;                        //para vibración
float increment=0.1;                   //de pantalla 3
String pantalla;
String estado;
PFont laFuenteKeWaUsar;
PFont laFuenteKeWaUsar2;
PImage fotoPantalla1;
PImage fotoPantalla2;
PImage fotoPantalla3a;
PImage fotoPantalla3b;
PImage fotoPantalla4;
PImage fotoPantalla5;
PImage fotoPantalla5b;
PImage fotoPantalla6;
PImage fotoPantalla7;
PImage fotoPantalla7b;
PImage fotoPantalla8a;
PImage fotoPantalla8b;
PImage fotoPantalla9;
PImage fotoPantalla10;
PImage fotoPantalla11;
PImage fotoPantalla12;
PImage imagenEspada;
PImage imagenNieve1;
PImage imagenNieve2;
PImage cocoro4a;
PImage cocoro4b;
PImage cocoro9a;
PImage cocoro9b;
PImage cangrejo7;
PImage cangrejo12;
int [] arregloColor;
int caidaEspada;
int caidaNieve;
int late;
int tam;
int movi;
int movim;
boolean espada;
boolean nieve;

void setup() {
  size(600, 600);
  pantalla = "pantalla1";
  estado   = "apagado";
  caidaEspada = -600;
  caidaNieve  = -600;
  tam  = 600;
  late = 2;
  movi = 0;
  movim = -600;
  espada = false;
  nieve  = false;
  laFuenteKeWaUsar  = loadFont("LuzSans-Book-48.vlw");
  laFuenteKeWaUsar2 = loadFont("Parchment-Regular-48.vlw");
  fotoPantalla1  = loadImage("pantalla1.jpg");
  fotoPantalla2  = loadImage("pantalla2.jpg");
  fotoPantalla3a = loadImage("pantalla3a.jpg");
  fotoPantalla3b = loadImage("pantalla3b.png");
  fotoPantalla4  = loadImage("pantalla4.jpg");
  fotoPantalla5  = loadImage("pantalla5.png");
  fotoPantalla5b = loadImage("azucar.jpg");
  fotoPantalla6  = loadImage("pantalla6.jpg");
  fotoPantalla7  = loadImage("pantalla7.jpg");
  fotoPantalla7b = loadImage("pantalla7b.jpg");
  fotoPantalla8a = loadImage("pantalla8a.png");
  fotoPantalla8b = loadImage("pantalla8b.jpg");
  fotoPantalla9  = loadImage("pantalla9.jpg");
  fotoPantalla10 = loadImage("pantalla10.jpg");
  fotoPantalla11 = loadImage("pantalla11.jpg");
  cangrejo7  = loadImage("cangrejo7.png");
  cangrejo12 = loadImage("cangrejo12.png");
  cocoro4a = loadImage("coraTriste1.png");
  cocoro4b = loadImage("coraTriste2.png");
  cocoro9a = loadImage("coraSuper1.png");
  cocoro9b = loadImage("coraSuper2.png");
  imagenEspada = loadImage("espada.png");
  imagenNieve1 = loadImage("imagenNieve1.png");
  imagenNieve2 = loadImage("imagenNieve2.png");
  arregloColor = new int[5];
  arregloColor[0] = color(0);                    //negro
  arregloColor[1] = color(255);                 //blanco
  arregloColor[2] = color(150, 0, 255);        //violeta
  arregloColor[3] = color(255, 250, 0);       //amarillo-naranjoso
  arregloColor[4] = color(200, 0, 0);        //rojo
}

void draw() {
  if ( pantalla == "pantalla1") {
    muestraPantalla1();
  }
  if ( pantalla == "pantalla2") {
    muestraPantalla2();
  }
  if ( pantalla == "pantalla3") {
    muestraPantalla3();
  }
  if ( pantalla == "pantalla4") {
    muestraPantalla4();
  }
  if ( pantalla == "pantalla5") {
    muestraPantalla5();
  }
  if ( pantalla == "pantalla6") {
    muestraPantalla6();
  }
  if ( pantalla == "pantalla7") {
    muestraPantalla7();
  }
  if ( pantalla == "pantalla8") {
    muestraPantalla8();
  }
  if ( pantalla == "pantalla9") {
    muestraPantalla9();
  }
  if ( pantalla == "pantalla10") {
    muestraPantalla10();
  }
  if ( pantalla == "pantalla11") {
    muestraPantalla11();
  }
  if ( pantalla == "pantalla12") {
    muestraPantalla12();
  }
  //_______________________________________________________caidas
  if (espada == true) {
    caidaEspada = caidaEspada +6;
  }
  if (nieve == true) {
    caidaNieve = caidaNieve +3;
  }
  if (caidaNieve==600) {
    caidaNieve=0;
  }
  //_______________________________________________________latido
  if (tam>=650) {
    late=-2;
  }
  if (tam<=600) {
    late=1;
  }
  tam=tam+late;
  //_______________________________________________________movimiento letras creditos
  if (movim>=600) {
    movim=-600;
  }
  if (movi>=600) {
    movi=-600;
  }
  movim=movim+1;
  movi=movi+1;
}

void mousePressed() {
  //--------------------------------------------[  PANTALLA 1  ]
  if (pantalla=="pantalla1") {
    if (clickBotonCircu(275, 300, 50)) {
      estado = ":(";
    }
    if (clickBotonCircu(375, 300, 50)) {
      estado = ":)";
    }
    if (clickBotonRect(225, 375, 150, 30)) {
      pantalla="pantalla2";
    }
    //---------------------------------------------[  :(  ]
    if (estado==":(") {
      if (clickBotonCircu(550, 50, 25)) {
        pantalla="pantalla3";
      }
      if (clickBotonCircu(50, 50, 25)) {
        pantalla="pantalla4";
      }
      if (clickBotonCircu(50, 550, 25) && espada==true) {
        pantalla="pantalla5";
      }
      if (clickBotonCircu(550, 550, 25)) {
        pantalla="pantalla6";
      }
    }
    //---------------------------------------------[  :)  ]
    if (estado==":)") {
      if (clickBotonCircu(550, 50, 25)) {
        pantalla="pantalla8";
      }
      if (clickBotonCircu(50, 50, 25)) {
        pantalla="pantalla9";
      }
      if (clickBotonCircu(50, 550, 25)&& nieve==true) {
        pantalla="pantalla10";
      }
      if (clickBotonCircu(550, 550, 25)) {
        pantalla="pantalla11";
      }
    }
  }
  //--------------------------------------------[  PANTALLA 2  ]
  if (pantalla=="pantalla2") {
    if (clickBotonRect(10, 540, 200, 50)) {
      pantalla="pantalla1";
    }
    if (clickBotonRect(385, 540, 200, 50)) {
      pantalla="pantalla1";
      estado = "apagado";
      espada=false;
      nieve=false;
      caidaEspada = -600;
      caidaNieve = -600;
    }
  }
  //--------------------------------------------[  PANTALLA 3  ]
  if (pantalla=="pantalla3") {
    if (clickBotonCircu(50, 550, 25)) {
      pantalla="pantalla1";
    }
  }
  //--------------------------------------------[  PANTALLA 4  ]
  if (pantalla=="pantalla4") {
    if (clickBotonCircu(550, 550, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonCircu(135, 388, 25)) {
      espada=true;
    }
    if (clickBotonCircu(50, 550, 25)&& caidaEspada>=600) {
      pantalla="pantalla5";
    }
  }
  //--------------------------------------------[  PANTALLA 5  ]
  if (pantalla=="pantalla5") {
    if (clickBotonCircu(550, 50, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonRect(0, 4, 53, 60)) {
      pantalla="pantalla7";
    }
  }
  //--------------------------------------------[  PANTALLA 6  ]
  if (pantalla=="pantalla6") {
    if (clickBotonCircu(50, 50, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonRect(300, 100, 200, 200)) {
      pantalla="pantalla7";
    }
  }
  //--------------------------------------------[  PANTALLA 7  ]
  if (pantalla=="pantalla7") {
    if (clickBotonCircu(300, 50, 25)) {
      pantalla="pantalla1";
    }
  }
  //--------------------------------------------[  PANTALLA 8  ]
  if (pantalla=="pantalla8") {
    if (clickBotonCircu(50, 550, 25)) {
      pantalla="pantalla1";
    }
  }
  //--------------------------------------------[  PANTALLA 9  ]
  if (pantalla=="pantalla9") {
    if (clickBotonCircu(550, 550, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonCircu(width/3, 50, 20)) {
      nieve=true;
    }
    if (clickBotonCircu(50, 550, 25)&& caidaNieve>=-300) {
      pantalla="pantalla10";
    }
  }
  //--------------------------------------------[  PANTALLA 10  ]
  if (pantalla=="pantalla10") {
    if (clickBotonCircu(550, 50, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonRect(0, 4, 53, 60)) {
      pantalla="pantalla7";
    }
  }
  //--------------------------------------------[  PANTALLA 11  ]
  if (pantalla=="pantalla11") {
    if (clickBotonCircu(50, 50, 25)) {
      pantalla="pantalla1";
    }
    if (clickBotonRect(300, 100, 200, 200)) {
      pantalla="pantalla12";
    }
  }
  //--------------------------------------------[  PANTALLA 12  ]
  if (pantalla=="pantalla12") {
    if (clickBotonCircu(300, 50, 25)) {
      pantalla="pantalla1";
    }
  }
}
