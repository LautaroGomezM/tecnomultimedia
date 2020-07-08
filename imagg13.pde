PImage imag13;

void imag13(){

  imag13.resize(1024,764);      // si elegis explorar
  image(imag13,0,0);

if (mouseX>858 && mouseX<997){     //recuadro "inicio"
if (mouseY>92 && mouseY<137){  
      noFill();
      stroke(#EF00FC);
      strokeWeight(3); 
      rect(858, 92, 141, 45);
    }
  }
  

}

void clickimag13(){
  
if (mouseX>858 && mouseX<997){     // "inicio"
if (mouseY>92 && mouseY<137){  
  
 estado="pantallainicio";                
  
}}

}
