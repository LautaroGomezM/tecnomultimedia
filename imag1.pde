PImage imaginicio;
PImage imagcielo;
PImage avion;
PImage jugar;
PImage creditos;

float x=400;

void imag1() {      // inicio del juego (menú) 

  background(255);
  
  instrucciones[0]= "Recoge señal para poder hablar (tocar 3 veces)";
  ejex=-50;
  
  image (avion, x, -20);
  x=x-1;
  if (x<(-1350)) {
    x=750;
  }

  imagcielo.resize(1024, 768);
  image (imagcielo, 0, -5);

  imaginicio.resize(1024, 768);
  image (imaginicio, 0, 0);

  creditos.resize(225, 100);
  image (creditos, 380, 430);

  jugar.resize(300, 250);
  image (jugar, 350, 250);


  if (mouseX>385 && mouseX<600 ) {
    if (mouseY>342 && mouseY<418 ) {
      jugar.resize(300, 250);
      image (jugar, 350, 250);
    }
  }


  if (mouseX>395 && mouseX<590 ) {
    if (mouseY>448 && mouseY<510 ) {
      creditos.resize(225, 100);
      image (creditos, 380, 430);
    }
  }
}

//-----------------------------------------------------------

void clickimag1() {

  if (mouseX>385 && mouseX<600 ) {
    if (mouseY>342 && mouseY<418 ) {

      estado = "imag2";
    }
  }

  if (mouseX>395 && mouseX<590 ) {
    if (mouseY>448 && mouseY<510 ) {

      estado="creditos";
    }
  }
}
