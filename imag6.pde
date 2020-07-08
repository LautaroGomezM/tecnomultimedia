PImage imag6;

void imag6(){
  
  imag6.resize(1024,764);
  image(imag6,0,0);
  
if (mouseX>860 && mouseX<999){    //recuadro "inicio"
if (mouseY>103 && mouseY<148){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(860,103,143,44);
}}  
  
}

void clickimag6(){
  
if (mouseX>860 && mouseX<999){    //si vas con la policia
if (mouseY>103 && mouseY<148){

estado = "pantallainicio";
  
}}

}
