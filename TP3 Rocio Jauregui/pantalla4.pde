// CIELO Y ESPADA
void muestraPantalla4(){
 image(fotoPantalla4,0,0,600,600); 
 image(coraTriste1,0,0,600,600); 
 image(espadaa,0,caida,600,600);
 pushStyle();
 imageMode(CENTER);
 image(coraTriste2,300,300,tam,tam); 
 popStyle();
  if (espada == false) {
 ellipse(115+25,375+13,50,25);
  }
  if (espada==true && caida>=600){
    ellipse(50,550,50,50);
  }
 ellipse(550,550,50,50); //boton
// rect(475,395,50,25);
 //ellipse(475+25,395+13,50,25);
 //ellipse(400+25,285+13,50,25);
 //ellipse(135+25,285+13,50,25);
                                                                      //efecto elipses
 pushStyle();
  float disTanci=dist(mouseX,mouseY,550,550);
 if (pantalla=="pantalla4" && estado==":(" && disTanci<radio25) {
   fill(0,90);
    ellipse(550,550,50,50);
  }
  
   float disTanc=dist(mouseX,mouseY,50,550);
  if (pantalla=="pantalla4" && disTanc<radio25&& espada==true) {  
    fill(0,90);                                          
    ellipse(50,550,50,50);
  }
  popStyle();
  
  
pushStyle();  
    float disTanciaO=dist(mouseX,mouseY,115+25,375+13);
  if (disTanciaO<radio50 && espada==false) {
    fill(150,0,255,80);
    ellipse(115+25,375+13,50,25);
  }
  popStyle();
}
