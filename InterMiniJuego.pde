
// Interaccion de MiniJuego

class InteracMiniJuego{
  
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
 
 float radioB, trX, trY, movX, movY, movX2, movY2, ejeXb, ejeYb, rotacion;
   
 boolean click;  
   
InteracMiniJuego(){   
  
  trX=width/2;  
  trY=height/2;  
  
  movX= random(-3,3);  // velocidad de burbujas BUENAS
  movY= random(-3,3); 
  
  movX2= random(-6,6);  // velocidad de burbujas MALAS
  movY2= random(-6,6);     
 
  radioB=100;
  ejeXb=0;
  ejeYb=0;
  
  click = false;
}
 
void comenzarBuenas(){          
  areaBurbujaBuena(escXvent(0),escYvent(0),areaX(radioB));
  movBurbujasBuenas();
}
void comenzarMalas(){          
  areaBurbujaMala(escXvent(0),escYvent(0),areaX(radioB));
  movBurbujasMalas();
}
  
void movBurbujasBuenas(){
   trX+=movX; 
   trY+=movY;   
   if(trX>width+radioB){
    trX=0-radioB;
   }
   if(trY>height+radioB){
    trY=0-radioB;   
   }
   if(trX<0-radioB){
    trX=width+radioB;    
   }
   if(trY<0-radioB){
    trY=height+radioB;    
   }     
}

void movBurbujasMalas(){
  
   trX+=movX2; 
   trY+=movY2;   
   if(trX>width+radioB){
    trX=0-radioB;
   }
   if(trY>height+radioB){
    trY=0-radioB;   
   }
   if(trX<0-radioB){
    trX=width+radioB;    
   }
   if(trY<0-radioB){
    trY=height+radioB;    
   }     
}

 void areaBurbujaBuena(float x_, float y_,float radio){    
  push();
   translate(trX,trY);
   rotate(radians(rotacion));
   noStroke();
   rotacion++;
   
   if (click==false){ 
   fill(50,160,245);
   } else {
   fill(150); 
   }
   ellipse(escXvent(x_),escYvent(y_),areaX(radio),areaY(radio));
   
   fill(255); 
   textAlign(CENTER);
   textSize(escXvent(10));
   textSize(escYvent(15));
   text("SEÑAL",ejeXb,ejeYb+5);
  pop();
 }  
   
 void areaBurbujaMala(float x_, float y_,float radio){  
  
  push();
   translate(trX,trY);
   noStroke();
   
   if (click==false){ 
   fill(255,0,0);
   } else {
   fill(150); 
   } 
   ellipse(escXvent(x_),escYvent(y_),areaX(radio),areaY(radio));
  pop();
 }
  
//----------------------------------------------------------------- 

void mousePressed(){ 
  
  if (dist(mouseX,mouseY,trX,trY)<areaX(50)&&
  (dist(mouseX,mouseY,trX,trY)<areaY(50))){
   click = true;
 }
} 

}//
