
class Celu_ {

  PImage celular;

  Celu_() {
    celular= loadImage("celular.png");
  } 

  void celuPuntero() {
    celu();
  }

  void celu() {
    imageMode(CENTER);
    celular.resize(30, 70); 
    image(celular, mouseX, mouseY);
  }
}
