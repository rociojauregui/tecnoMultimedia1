
PFont laFuenteKeWaUsar;
PFont laFuenteKeWaUsar2;
String pantalla;
String estado;
int radio25=25;
int radio50=50;
PImage fotoPantalla1;
PImage fotoPantalla2;
int movi;
int movim;
PImage fotoPantalla3;
PImage cerebrom;
float time=0.0;                        //para vibración
float increment=0.1;                   //de pantalla 3
PImage fotoPantalla4;
PImage coraTriste1;
PImage coraTriste2;
PImage espadaa;
boolean espada;
int caida;
int late;
int tam;
PImage fotoPantalla5;
PImage azucar;
PImage fotoPantalla6;
PImage fotoPantalla7;
PImage cangrejoRoto ;
PImage fotoPantalla8;
PImage fotoPantalla8fondo;
PImage fotoPantalla9;
PImage nieve1;
PImage nieve2;
boolean nievee;
int caida2;
int caida3;
PImage coraSuper1;
PImage coraSuper2;
PImage fotoPantalla10;
PImage santaRita;
PImage fotoPantalla11;
boolean brillo;
PImage brillitos;
PImage cangrejoOtro ;
//============================================================== VOID SETUP 
void setup() {
  size(600, 600);
  pantalla = "pantalla1";
  estado = "nada";
  fotoPantalla1=loadImage("pantalla1.jpg");
  fotoPantalla3=loadImage("pantalla3.jpg");
  cerebrom=loadImage("cerebrom.png");
  fotoPantalla2=loadImage("pantalla2.jpg");
  movi = -600;
  movim = 0;
  fotoPantalla4=loadImage("pantalla4.jpg");
  coraTriste1=loadImage("coraTriste1.png");
  coraTriste2=loadImage("coraTriste2.png");
  espada=false;
  caida=-600;
  espadaa=loadImage("espada.png");
  late=2;
  tam = 600;
  fotoPantalla5=loadImage("pantalla5.png");
  azucar=loadImage("azucar.jpg");
  fotoPantalla6=loadImage("pantalla6.jpg");
  fotoPantalla7=loadImage("pantalla7.png");
  cangrejoRoto=loadImage("roto.png");
  fotoPantalla8=loadImage("pantalla8.png");
  fotoPantalla8fondo=loadImage("pantalla8fondo.jpg");
  fotoPantalla9=loadImage("pantalla9.jpg");
  coraSuper1=loadImage("coraSuper1.png");
  coraSuper2=loadImage("coraSuper2.png");
  nieve1=loadImage("nieve1.png");
  nieve2=loadImage("nieve2.png");
  nievee=false;
  caida2=-300;
  caida3=-900;
  fotoPantalla10=loadImage("pantalla10.jpg");
  santaRita=loadImage("santarita.png");
  fotoPantalla11=loadImage("pantalla11.jpg");
  brillitos=loadImage("brillitos11.png");
  brillo=false;
  cangrejoOtro=loadImage("otro.png");
  laFuenteKeWaUsar=loadFont("LuzSans-Book-48.vlw");
  laFuenteKeWaUsar2=loadFont("Parchment-Regular-48.vlw");
}
//============================================================== VOID DRAW 
void draw() {
  background(255);
  if ( pantalla == "pantalla1") {
    muestraPantalla1();
  } else if (pantalla == "pantalla2") {
    muestraPantalla2();
  } else if (pantalla == "pantalla3") {
    muestraPantalla3();
  } else if (pantalla == "pantalla4") {
    muestraPantalla4();
  } else if (pantalla == "pantalla5") {
    muestraPantalla5();
  }  else if (pantalla == "pantalla6") {
    muestraPantalla6();
  } else if (pantalla == "pantalla7") {
    muestraPantalla7();
  } else if (pantalla == "pantalla8") {
    muestraPantalla8();
  }  else if (pantalla == "pantalla9") {
    muestraPantalla9();
  }   else if (pantalla == "pantalla10") {
    muestraPantalla10();
  } else if (pantalla == "pantalla11") {
    muestraPantalla11();
  } else if (pantalla == "pantalla12") {
    muestraPantalla12();
  }
  //_______________________________________________________caida de la espada
  if (espada == true) {
    caida=caida+8;
  }
  //_______________________________________________________caida de nievee
  if (nievee == true) {
    caida2=caida2 +3;
    caida3=caida3 +3;
  }
  if(caida3>900){
    caida3=-300;
  }
  //_______________________________________________________latido
  if(tam>=650){
    late=-2;
  }
  if(tam<=600){
    late=1;
  }
  tam=tam+late;
    
  
}

//============================================================== MOUSE PRESSED
void mousePressed() {
//===============================================================================================PANTALLA 1==========================

  float disT=dist(mouseX,mouseY,275,300);
  if (pantalla=="pantalla1" && disT<radio50) {                                                                               //  :(
    estado = ":(";
  }
  float disTa=dist(mouseX,mouseY,375,300);
  if (pantalla=="pantalla1" && disTa<radio50) {                                                                              //  :)
    estado = ":)";
  }
  if (pantalla=="pantalla1" && mouseX>225 &&mouseX<225+150 &&mouseY>375&&mouseY<375+30){
    pantalla="pantalla2";
  }
//.........................................................................  :(  ....................................................  
    float disTan=dist(mouseX,mouseY,50,50);
  if (pantalla=="pantalla1" && estado == ":(" && disTan<radio25 ) {                                                         //a P4
    pantalla = "pantalla4";
  }
  float disTanc=dist(mouseX,mouseY,50,550);
  if (pantalla=="pantalla1" && estado==":(" && disTanc<radio25&& espada==true) {                                            //a P5
    pantalla= "pantalla5";
  }
  float disTanci=dist(mouseX,mouseY,550,550);
  if (pantalla=="pantalla1" && estado==":(" && disTanci<radio25) {                                                           //a P6
    pantalla= "pantalla6";
  }
  float disTancia=dist(mouseX,mouseY,550,50);
  if (pantalla=="pantalla1" && estado==":(" && disTancia<radio25) {                                                          //a P3
    pantalla= "pantalla3";
  }
//.........................................................................  :)  ....................................................  
  if (pantalla=="pantalla1" && estado == ":)" && disTan<radio25 ) {                                                         //a P9
    pantalla = "pantalla9";
  } 
    if (pantalla=="pantalla1" && estado==":)" && disTanc<radio25 &&nievee==true) {                                                         //a P10
    pantalla= "pantalla10";
  }
    if (pantalla=="pantalla1" && estado==":)" && disTanci<radio25) {                                                        //a P11
    pantalla= "pantalla11";
  }
    if (pantalla=="pantalla1" && estado==":)" && disTancia<radio25) {                                                       //a P8
    pantalla= "pantalla8";
  }
//==============================================================================================PANTALLA 2============================  

if (pantalla=="pantalla2" && mouseX>10 && mouseX<210 && mouseY>540 && mouseY<590){
  pantalla="pantalla1";
}
if(pantalla=="pantalla2" && mouseX>385 && mouseX<585 && mouseY>540 && mouseY<590){
  pantalla="pantalla1";
  estado="nada";
  espada=false;
  caida=-600;
  late=2;
  tam = 600;
  nievee=false;
  caida2=-300;
}

//==============================================================================================PANTALLA 3============================

  if (pantalla=="pantalla3" && estado==":(" && disTanc<radio25) {                                                           //a P1
    pantalla= "pantalla1";
  }

//==============================================================================================PANTALLA 4============================

  if (pantalla=="pantalla4" && estado==":(" && disTanci<radio25) {                                                          //a P1
    pantalla= "pantalla1";
  }
  float disTanciaO=dist(mouseX,mouseY,115+25,375+13);
  if (pantalla=="pantalla4" && estado==":(" && disTanciaO<radio50) {                         //espada
    espada=true;
  }
  if (pantalla=="pantalla4" && estado==":(" && disTanc<radio25&& espada==true) {                                            //a P5
    pantalla= "pantalla5";
  }

//==============================================================================================PANTALLA 5============================

  if (pantalla=="pantalla5" && estado==":(" && disTancia<radio25) {                                                         //a P1
    pantalla= "pantalla1";
  }
  if(pantalla=="pantalla5" && estado==":(" && mouseX>0 && mouseX<53 && mouseY>4 &&mouseY<64){                               //a P7
    pantalla= "pantalla7";
  }
  
//==============================================================================================PANTALLA 6============================  

  if (pantalla=="pantalla6" && estado == ":(" && disTan<radio25 ) {                                                         //a P1
    pantalla = "pantalla1";
  }
  if (pantalla=="pantalla6" && estado==":(" && mouseX>300 && mouseX<500 && mouseY>100 &&mouseY<300){                        //a P7
    pantalla="pantalla7";
  }
  
//==============================================================================================PANTALLA 7============================

float disTanciaa=dist(mouseX,mouseY,300,50);
if(pantalla=="pantalla7" && estado== ":(" && disTanciaa<radio25){
  pantalla="pantalla1";
}
 
//==============================================================================================PANTALLA 8============================

  if (pantalla=="pantalla8" && estado==":)" && disTanc<radio25) {                                                           //a P1
    pantalla= "pantalla1";
  }

//==============================================================================================PANTALLA 9============================

  if (pantalla=="pantalla9" && estado==":)" && disTanci<radio25) {                                                          //a P1
    pantalla= "pantalla1";
  }
  float disTanciaN=dist(mouseX,mouseY,300,50);
  if (pantalla=="pantalla9" && estado==":)" && disTanciaN<radio25) {                         //nieve
    nievee=true;
  }
  if (pantalla=="pantalla9" && estado==":)" && disTanc<radio25&& nievee==true) {                                            //a P10
    pantalla= "pantalla10";
  }
 
//==============================================================================================PANTALLA 10============================

  if (pantalla=="pantalla10" && estado==":)" && disTancia<radio25) {                                                         //a P1
    pantalla= "pantalla1";
  }
  if(pantalla=="pantalla10" && estado==":)" && mouseX>0 && mouseX<53 && mouseY>4 &&mouseY<64){                               //a P7
    pantalla= "pantalla12";
  }
  
//==============================================================================================PANTALLA 11============================  

  if (pantalla=="pantalla11" && estado == ":)" && disTan<radio25 ) {                                                         //a P1
    pantalla = "pantalla1";
  }
  if (pantalla=="pantalla11" && estado==":)" && mouseX>300 && mouseX<500 && mouseY>100 &&mouseY<300){                        //a P12
    pantalla="pantalla12";
  }
  float disTanciaOnce= dist (mouseX,mouseY,175,475);
  if(pantalla=="pantalla11" && disTanciaOnce<radio25 && brillo==false){
    brillo=true;
  }else if(pantalla=="pantalla11" && disTanciaOnce<radio25 && brillo==true){
    brillo=false;
  }
  
//==============================================================================================PANTALLA 12============================

if(pantalla=="pantalla12" && estado== ":)" && disTanciaa<radio25){
  pantalla="pantalla1";
}

}
