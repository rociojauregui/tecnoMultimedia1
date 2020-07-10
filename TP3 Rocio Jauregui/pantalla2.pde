void muestraPantalla2(){
  image(fotoPantalla2,0,0,600,600);
  pushStyle();
 // stroke(255,170,0);
  stroke(100,20,255);
  strokeWeight(3);
  rect(10,540,200,50);
  rect(270,540,50,50);
  fill(0,150);
  rect(385,540,200,50);
  fill(255,200,0);
  textSize(30);
  text("volver",70,575);
  text("reiniciar",435,575);
  textSize(46);
  fill(255,200,0);
  text("iugeruaJ    oicoRocio    Jauregu",movi,50);
  text("iugeruaJ    oicoRocio    Jauregu",movim,50);
  popStyle();
  if(movim>=600){
    movim=-600;
  }
  if (movi>=600){
    movi=-600;
  }
  movim=movim+1;
  movi=movi+1;
  
  
}
