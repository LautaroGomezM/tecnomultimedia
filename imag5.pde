PImage imag5;

void imag5(){
  
  imag5.resize(1024,764);
  image(imag5,0,0);
  
if (mouseX>800 && mouseX<940){    //recuadro "inicio"
if (mouseY>258 && mouseY<303){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(800,258,142,43);
}}  
  
  
}

void clickimag5(){
  
if (mouseX>781 && mouseX<920){     //si escapas
if (mouseY>269 && mouseY<319){

estado = "pantallainicio";
  
}}

}
