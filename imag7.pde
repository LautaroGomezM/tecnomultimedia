PImage imag7;

void imag7() {

  image(imag7, 0, 0);

  if (mouseX>333 && mouseX<478) {    //recuadro "siguiente"
    if (mouseY>135 && mouseY<175) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(333, 135, 147, 40);
    }
  }
}

void clickimag7() {

  if (mouseX>333 && mouseX<478) {    //subiendo al avion
    if (mouseY>135 && mouseY<175) {


      estado = "imag8";
    }
  }
}
