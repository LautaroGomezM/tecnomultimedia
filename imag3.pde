
PImage imag3;

void imag3(){
  
  imag3.resize(1024,764);
  image(imag3,0,0);

  
if (mouseX>511 && mouseX<634){    //recuadro "si"
if (mouseY>241 && mouseY<296){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(511,241,121,52);
}}
  
if (mouseX>834 && mouseX<954){    //recuadro "no"
if (mouseY>242 && mouseY<297){
noFill();
stroke(#EF00FC);
strokeWeight(3); 
rect(834,242,120,52);
}}  
  

}
//-----------------------------------------------------------
void clickimag3(){

if (mouseX>511 && mouseX<634){    //abris mensaje
if (mouseY>241 && mouseY<296){
estado = "imag4";

}}

if (mouseX>834 && mouseX<954){    //subis al avion
if (mouseY>242 && mouseY<297){
 
estado = "imag7";

}}

}
