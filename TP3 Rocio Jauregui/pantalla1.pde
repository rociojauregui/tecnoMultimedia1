void muestraPantalla1(){
 image(fotoPantalla1,0,0);
 fill(0);
 textFont(laFuenteKeWaUsar);
 textSize(80);
 text( ") : )" ,250,323);
 pushStyle();
 textFont(laFuenteKeWaUsar2);
 textSize(60);
 textAlign(CENTER);
 text("c r e d i t o s",300,400);
 popStyle();
 noFill();
// rect(225,375,150,30);
  strokeWeight(3);
 if(estado == ":)" || estado == ":("){
   ellipse(50,50,50,50);
   ellipse(50,550,50,50);
   ellipse(550,550,50,50);
   ellipse(550,50,50,50);
 }
 if(estado==":("){
   ellipse(275,300,100,100);
 }
 if(estado==":)"){
   ellipse(325,300,100,100);
 }
 
 //                          efecto ellipses
   pushStyle();
   fill(0,90);
   noStroke();
   float disTan=dist(mouseX,mouseY,50,50);
  if (pantalla=="pantalla1" && (estado==":)"||estado==":(") && disTan<radio25 ) {
    ellipse(50,50,50,50);
  } 
   float disTanc=dist(mouseX,mouseY,50,550);
  if (pantalla=="pantalla1" && estado==":(" && disTanc<radio25&& espada==true) {                                            
    ellipse(50,550,50,50);
  }else if(pantalla=="pantalla1" && estado==":(" && disTanc<radio25&& espada==false){
    fill(100,0,0,90);
    ellipse(50,550,50,50);
    fill(0);
    textSize(30);
    text("antes hay que hacer algo",100,550);
  }
  if (pantalla=="pantalla1" && estado==":)" && disTanc<radio25&& nievee==true) {                                            
    ellipse(50,550,50,50);
  }else if(pantalla=="pantalla1" && estado==":)" && disTanc<radio25&& nievee==false){
    fill(100,0,0,90);
    ellipse(50,550,50,50);
    fill(0);
    textSize(30);
    text("antes hay que hacer algo",100,550);
  }
  float disTanci=dist(mouseX,mouseY,550,550);
  if (pantalla=="pantalla1" && (estado==":("||estado==":)") && disTanci<radio25) {                                                           //a P6
    fill(0,90);
    ellipse(550,550,50,50);
  }
  float disTancia=dist(mouseX,mouseY,550,50);
  if (pantalla=="pantalla1" && (estado==":("||estado==":)") && disTancia<radio25) {                                                          //a P3
    ellipse(550,50,50,50);
  }
  popStyle();
}
