void muestraPantalla8(){
  pushStyle();
  imageMode(CENTER);
 image(fotoPantalla8fondo,tam-300,350,600,600); 
 popStyle();
 image(fotoPantalla8,0,0,600,600); 
 pushStyle();
strokeWeight(3);
 stroke(0);
 ellipse(50,550,50,50);
 popStyle();
 
  pushStyle();
  float disTanc=dist(mouseX, mouseY, 50, 550);
  if (disTanc<radio25) {                                           
    fill(0, 90);
    stroke(0);
    ellipse(50, 550, 50, 50);
  }
  popStyle();
}
