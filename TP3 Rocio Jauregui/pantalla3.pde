void muestraPantalla3() {  
  float n= noise (time)*width/2+width/3;                           //esto lo encontré en youtube y la verdad es que no
  time += increment;                                               //entendí tanto tanto, pero fue la unica forma que encontré
  //para llegar al resultado visual que buscaba   :) 

  //                                                  efecto de ellipses


  image(fotoPantalla3, 0, 0, 600, 600); 
  pushStyle();
  imageMode(CENTER);
  image(cerebrom, 300, 300, 400+n, 400+n); 
  popStyle();
  pushStyle();
  stroke(255);
  noFill();
  ellipse(50, 550, 50, 50);
  popStyle();

  pushStyle();
  float disTanc=dist(mouseX, mouseY, 50, 550);
  if (disTanc<radio25) {                                           
    fill(255, 90);
    stroke(255,0);
    ellipse(50, 550, 50, 50);
  }
  popStyle();

}
