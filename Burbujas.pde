String sentido = "D";
float a=50; 

void burbujas(int x_, int y_) {      // reutilizacion en imag2 y estadoClick

  if (sentido=="D") {
    a++;
  }
  if (sentido=="I") {
    a--;
  }
  if (a >=400) {
    sentido="I";
  }
  if (a <=50) {
    sentido="D";
  }

  noStroke();
  fill(0, 0, 100, 50);
  ellipse(a+x_, y_, 50, 50);
  
  ondas.resize(35,30);
  image (ondas,a+x_-17,y_-12);
  
  
}
