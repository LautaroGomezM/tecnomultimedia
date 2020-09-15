PImage imag9;

void imag9() {

  image(imag9, 0, 0);

  if (mouseX>327 && mouseX<489) {     // recuadro "mirar a tu alrededor"
    if (mouseY>128 && mouseY<173) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(327, 128, 164, 45);
    }
  }
}

void clickimag9() {


  if (mouseX>327 && mouseX<489) {     // playa
    if (mouseY>128 && mouseY<173) {

      estado = "imag10";
    }
  }
}
