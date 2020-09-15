PImage imag4;

void imag4() {

  image(imag4, 0, 0);

  if (mouseX>93 && mouseX<257) {    //recuadro "escapar"
    if (mouseY>377 && mouseY<432) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(93, 377, 168, 52);
    }
  }  

  if (mouseX>452 && mouseX<594) {    //recuadro "ignorar"
    if (mouseY>171 && mouseY<218) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(452, 171, 142, 45);
    }
  }    

  if (mouseX>787 && mouseX<951) {    //recuadro "avisar"
    if (mouseY>377 && mouseY<432) {
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(787, 377, 167, 52);
    }
  }
}

//-----------------------------------------------------------
void clickimag4() {

  if (mouseX>93 && mouseX<257) {    //"escapar"
    if (mouseY>377 && mouseY<432) {

      estado ="imag5";
    }
  }

  if (mouseX>452 && mouseX<594) {    //"ignorar"
    if (mouseY>171 && mouseY<218) {

      estado ="imag7";
    }
  }

  if (mouseX>787 && mouseX<951) {    //"avisar"
    if (mouseY>377 && mouseY<432) {

      estado ="imag6";
    }
  }
}
