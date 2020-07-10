void muestraPantalla7(){
  imageMode(CENTER);
  image(fotoPantalla7, mouseX, mouseY, 1200, 1200);
  pushMatrix();
  translate(300, 300);
  rotate(radians(-45));
  image(fotoPantalla7,0,0, 600, 600);
  popMatrix();
  pushStyle();
  noStroke();
  fill(255, 40, 0, 100);
  ellipse(300, 270, 50, 50);
  ellipse(300, 270, 75, 75);
  ellipse(300, 270, 125, 125);
  ellipse(300, 270, 150, 150);
  ellipse(300, 270, 175, 175);
  ellipse(300, 270, 215, 215);
  ellipse(300, 270, 260, 260);
  popStyle();
  pushStyle();
  noFill();
  stroke(255);
  ellipse(300,50,50,50);
  popStyle();
  imageMode(CORNER);
  image(cangrejoRoto, 0, 0);
  
  
 pushStyle(); 
  float disTanciaa=dist(mouseX,mouseY,300,50);
if(disTanciaa<radio25){
  stroke(255);
  fill(255,90);
  ellipse(300,50,50,50);
}
  popStyle();

}
