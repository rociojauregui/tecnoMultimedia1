// CIELO Y nieve
void muestraPantalla9(){
 image(fotoPantalla9,0,0,600,600); 
 image(coraSuper1,0,0,600,600); 
 pushStyle();
 imageMode(CENTER);
 if(nievee==true){
   image(nieve1,300,caida2,600,600);
   image(nieve2,300,caida3,600,600);
 }
 image(coraSuper2,300,300,tam,tam); 
 popStyle();
 pushStyle();
 stroke(255);
strokeWeight(3);
 ellipse(550,550,50,50);
 if(nievee==false){
   stroke(255);
   fill(255);
   ellipse(300,50,25,25);
 }else if(nievee==true && caida2>650){
   ellipse(50,550,50,50);
 }
 stroke(0);
 popStyle();
                                                                       //efecto elipses
 pushStyle();
  float disTanci=dist(mouseX,mouseY,550,550);
 if (disTanci<radio25) {
   stroke(255);
   fill(255,90);
    ellipse(550,550,50,50);
  }
  
   float disTanc=dist(mouseX,mouseY,50,550);
  if (disTanc<radio25&& nievee==true) {  
    stroke(255);
    fill(255,90);                                          
    ellipse(50,550,50,50);
  }
  
    float disTanciaN=dist(mouseX,mouseY,300,50);
  if (disTanciaN<radio25 && nievee==false) {         
    textSize(30);
    fill(0);
    text("*",295,70);
  }
  popStyle();
}
