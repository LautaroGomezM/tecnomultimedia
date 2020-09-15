PFont fuente;

PImage creditocielo;
PImage vidrio;
PImage base;
PImage avion2;
PImage texto;

float xa=1200;
float ya=50;
float ytit=500;

void creditos() {

  image (creditocielo, 0, -5);

  avion2.resize(500, 400);
  image (avion2, xa, ya);
  xa=xa-5;
  ya=ya+1;
  if (xa<-500) {
    xa=1200;
    ya=50;
  }
  
  image (vidrio, 0, 5);
  
  texto.resize(500, 300);
  image (texto, 300, ytit); 
  
  ytit=ytit-2;
  
  if (ytit<=250) {
    ytit=250;
  }

  base.resize(1024, 770);
  image (base, 0, 0); 

  fuente=loadFont("PrestigeEliteStd-Bd-15.vlw");

  if (ytit<=250) {
    fill(0);
    textFont(fuente);
    text ("Haz click para ir a inicio", 50, 750);
  }
}

void clickcreditos() {

  if (ytit<=250) {
    estado="pantallainicio";
  }
}
