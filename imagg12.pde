PImage imag12;

void imag12() {


  image(imag12, 0, 0);

  if (mouseX>833 && mouseX<973) {     //recuadro "inicio"
    if (mouseY>97 && mouseY<142) { 
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(833, 97, 142, 45);
    }
  }
}

void clickimag12() {

  if (mouseX>833 && mouseX<973) {     // "inicio"
    if (mouseY>97 && mouseY<142) { 

      estado="pantallainicio";
    }
  }
}
