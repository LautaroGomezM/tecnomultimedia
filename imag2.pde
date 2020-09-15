String [] instrucciones;
PImage imag2;
PImage celular;
PImage ondas;
float t=100;
float r=50;
int ejex=-50;
int contador=0;

void imag2() {

  background(255);
  image (imag2, 0, 0);  
  noStroke();
  fill (#2B46DE, t);
  ellipse (897, 402, r, r);
  r = r+1;
  if (r>100) {
    r=0;
  }
  if (r>50) {
    t=t-2;
  } else {
    t=100;
  }

  celular.resize(280, 285);
  image (celular, 760, 310);

  burbujas (100, 400);
  burbujas (200, 600);
  burbujas (300, 500);

  fill(0);
  textSize(15);
  text(instrucciones[0], width/2+40, 130);

  println(contador);
  
}

void clickimag2() {

  if (dist(ejex, 402, mouseX, mouseY)<50 ) {
    estado = "imag3";
  }
}


void clickBurbuja(int x_, int y_) {
  
  if (dist(a+x_, y_, mouseX, mouseY)<20 ) {
    contador+=1;
  }
  
    if (contador>2){        
  instrucciones[0]= "Genial! ahora atienda el telefono";
  println (instrucciones[1]); 
  ejex=897; 
  }
  
  
}
