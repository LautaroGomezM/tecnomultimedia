PImage imag14;

void imag14() {

  image(imag14, 0, 0);

  if (mouseX>394 && mouseX<491) {     //recuadro "final"
    if (mouseY>110 && mouseY<155) {  
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(394, 110, 97, 45);
    }
  }
}

void clickimag14() {

  if (mouseX>394 && mouseX<491) {     //creditos
    if (mouseY>110 && mouseY<155) {  

      estado="creditos";
    }
  }
}
