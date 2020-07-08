PImage imag11;

void imag11() {

  imag11.resize(1024, 764);      //si elegis refugio
  image(imag11, 0, 0);

  if (mouseX>826 && mouseX<987) {    //recuadro "saltar y gritar" 
    if (mouseY>107 && mouseY<154) { 
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(826, 107, 167, 47);
    }
  }
}

void clickimag11() {

  if (mouseX>826 && mouseX<987) {   // final
    if (mouseY>107 && mouseY<154) { 

      estado="imag14";  
    }
  }
}
