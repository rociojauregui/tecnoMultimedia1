//=====================================================   IMAGENES
void imagenFondo() {
  if (pantalla == "pantalla1") {
    image(fotoPantalla1, 0, 0);
  } else
    if (pantalla == "pantalla2") {
      image(fotoPantalla2, 0, 0);  
    } else
      if (pantalla == "pantalla3") {
        image(fotoPantalla3a, 0, 0);
        pushStyle();
        imageMode(CENTER);

        float n= noise (time)*width/2+width/3;                           //esto lo encontré en youtube y la verdad es que no
        time += increment;                                               //entendí tanto tanto, pero fue la unica forma que encontré
        //                                                                 para llegar al resultado visual que buscaba   :) 
        image(fotoPantalla3b, width/2, height/2, 400+n, 400+n);
        popStyle();
      } else
        if (pantalla == "pantalla4") {
          image(fotoPantalla4, 0, 0);
          image(cocoro4a, 0, 0);
          if (espada==true) {
            pushStyle();
            imageMode (CENTER);
            image (imagenEspada, width/2, caidaEspada );
            popStyle();
          }
          pushStyle();
          imageMode(CENTER);
          image(cocoro4b, width/2, height/2, tam, tam);
          popStyle();
        } else
          if (pantalla == "pantalla5") {
            pushStyle();
            imageMode(CENTER);
            image(fotoPantalla5b, mouseX, mouseY);
            popStyle();
            image(fotoPantalla5, 0, 0);
          } else
            if (pantalla == "pantalla6") {
              image(fotoPantalla6, 0, 0);
            } else
              if (pantalla == "pantalla7"||pantalla == "pantalla12") {
                pushStyle();
                imageMode(CENTER);
                image(fotoPantalla7, mouseX, mouseY);
                popStyle();
                pushStyle();
                pushMatrix();
                translate(300, 300);
                rotate(radians(-45));
                imageMode(CENTER);
                image(fotoPantalla7b, 0, 0);
                popMatrix();
                popStyle();
              } else
                if (pantalla == "pantalla8") {
                  image(fotoPantalla8b, tam-600, 0, 600, 600);
                  image(fotoPantalla8a, 0, 0, 600, 600);
                } else
                  if (pantalla == "pantalla9") {
                    image(fotoPantalla9, 0, 0);
                    image(cocoro9a, 0, 0);
                    pushStyle();
                    imageMode(CENTER);
                    image(cocoro9b, width/2, height/2, tam, tam);
                    popStyle();
                    image (imagenNieve1, 0, caidaNieve);
                    image (imagenNieve2, 0, caidaNieve-600);
                  } else
                    if (pantalla == "pantalla10") {
                      image(fotoPantalla10, 0, 0);
                    } else
                      if (pantalla == "pantalla11") {
                        image(fotoPantalla11, 0, 0);
                      }
}

//=====================================================[  BOTONES CIRCULARES  ]

//-----------------------------------------------------(dibujo)

void botonesCircu(float x_, float y_, float  radio_) {
  pushStyle();
  noFill();
  if (dist(mouseX, mouseY, x_, y_)<radio_) {
    if (pantalla=="pantalla3"||pantalla=="pantalla7"
      ||pantalla=="pantalla9"||pantalla=="pantalla11"
      ||pantalla=="pantalla12") {
      fill(arregloColor[1], 90);
      //stroke(arregloColor[1]);
    } else if (dist(mouseX, mouseY, x_, y_)<radio_ && x_==50 && y_==550 && pantalla=="pantalla1" &&
      ( estado==":)" && nieve==false || estado==":(" && espada==false )) { 
      pushStyle();
      fill(arregloColor[0]);
      textSize(30);
      text("antes hay que hacer algo", 100, 550);
      popStyle();
      fill(arregloColor[4], 90);
    } else {
      fill(arregloColor[0], 90);
    }
  }
  strokeWeight(3);
  ellipse(x_, y_, radio_*2, radio_*2);
  popStyle();
}

//-----------------------------------------------------(interacción)
boolean clickBotonCircu(float x_, float y_, float radio_) {
  if ( dist (mouseX, mouseY, x_, y_)<radio_) {
    return true;
  } else {
    return false;
  }
}

//=====================================================[  BOTONES CUADRADOS  ]
//-----------------------------------------------------(dibujo)

void botonRect ( float x_, float y_, float ancho_, float alto_ ) {
  rect(x_, y_, ancho_, alto_);
}

//-----------------------------------------------------(interacción)
boolean clickBotonRect ( float x_, float y_, float ancho_, float alto_ ) {
  if (mouseX>x_ && mouseX<(x_+ancho_) && mouseY>y_ && mouseY<( y_ + alto_)) {
    return true;
  } else {
    return false;
  }
}
