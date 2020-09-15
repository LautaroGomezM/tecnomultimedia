PImage imag8;

void imag8() {

  image(imag8, 0, 0);

  if (mouseX>845 && mouseX<990) {     // recuadro "siguiente"
    if (mouseY>125 && mouseY<165) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(845, 125, 145, 40);
    }
  }
}

void clickimag8() {


  if (mouseX>845 && mouseX<990) {     // avion explota
    if (mouseY>125 && mouseY<165) {

      estado = "imag9";
    }
  }
}
