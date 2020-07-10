//PIEZA Y ESPADA
void muestraPantalla5(){
  imageMode(CENTER);
  image(azucar,mouseX,mouseY);
  imageMode(CORNER);
 image(fotoPantalla5,0,0); 
 ellipse(550,50,50,50);  //boton
 
 
 
 pushStyle();
  float disTancia=dist(mouseX,mouseY,550,50);
  if (disTancia<radio25) {
    fill(0,90);
    ellipse(550,50,50,50);
  }
  popStyle();
}
