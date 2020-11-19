
// Interaccion de Aventura grafica

class Interaccion{
       
 float escXvent(float valorX_){
 return map(valorX_ , 0, 1024, 0, width); 
 }  
 float escYvent(float valorY_){
 return map(valorY_ , 0, 768, 0, height);
 }
 float areaX(float valorX_){
 return map(valorX_ , 0, 1024, 0, width); 
 }  
 float areaY(float valorY_){
 return map(valorY_ , 0, 768, 0, height);
 } 
//------------------------------------------------------------------------------

 void marco(float x_, float y_, float ladosX_, float ladosY_){  
  push(); 
  rectMode(CENTER);
  noStroke();
  noFill();
  if(mouseX>escXvent(x_)-areaX(75) && mouseX<escXvent(x_)+areaX(75)&&
     mouseY>escYvent(y_)-areaY(25) && mouseY<escYvent(y_)+areaY(25)){ 
   strokeWeight(3);
   stroke(255);
   rect(escXvent(x_),escYvent(y_),areaX(ladosX_),areaY(ladosY_));
   }   
  pop();
 } 
//------------------------------------------------------------------------------  

 boolean mousePressed(float x_, float y_, float ladosX_, float ladosY_){        
  if(mouseX>escXvent(x_)-areaX(ladosX_) && mouseX<escXvent(x_)+areaX(ladosX_) &&
  mouseY>escYvent(y_)-areaY(ladosY_) && mouseY<escYvent(y_)+areaY(ladosY_)){ 
  return true;  
  } else {
  return false; 
  }}  
}//
