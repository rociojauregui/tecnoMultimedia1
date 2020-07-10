void muestraPantalla11(){
 image(fotoPantalla11,0,0,600,600); 
 if(brillo==true){
   image(brillitos,0,0,600,600);
 }
 pushStyle();
strokeWeight(3);
 stroke(255);
 ellipse(50,50,50,50);
 popStyle();
 
 pushStyle();
  float disTan=dist(mouseX, mouseY, 50, 50);
  if (disTan<radio25 ) {
    fill(255, 90);
    stroke(255);
    ellipse(50, 50, 50, 50);
  }
  popStyle();
}
