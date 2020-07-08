PImage imag10;

void imag10(){

  imag10.resize(1024,764);
  image(imag10,0,0);
  
  if (mouseX>68 && mouseX<265){     // recuadro "cueva"
if (mouseY>598 && mouseY<643){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(68,598,201,45);
}} 
  
if (mouseX>410 && mouseX<607){        // recuadro "fogata"
if (mouseY>432 && mouseY<475){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(410,432,200,43);
}}   
  
if (mouseX>749 && mouseX<946){    // recuadro "explorar"
if (mouseY>598 && mouseY<643){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(749,598,200,45);
}}   
  
//-----------------------------------------------------------------    
}

void clickimag10(){
 
  
  if (mouseX>68 && mouseX<265){     //"cueva"
if (mouseY>598 && mouseY<643){

estado = "imag11";  
}}

if (mouseX>410 && mouseX<607){        // "fogata"
if (mouseY>432 && mouseY<475){

estado = "imag12";  
}}

if (mouseX>749 && mouseX<946){    // "explorar"
if (mouseY>598 && mouseY<643){

estado = "imag13";  
}}

}
