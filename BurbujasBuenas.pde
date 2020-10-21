
class burbujasB_ {
  
float radioB,radioBC,trX, trY, movX, movY, ejeXb, ejeYb,rotacion;
 
burbujasB_(){
  
  radioBC=50;  
  radioB=100;
  movX= random(-6,6); 
  movY= random(-6,6);    
  trX=width/2;
  trY=height/2;
  ejeXb=0;
  ejeYb=0;
}
  
  void comenzar(){
  dibujo();
  movimiento();
  click();  
}
  
void dibujo(){    
 push();
  noStroke();
  translate(trX,trY);
  rotate(radians(rotacion));
  
  fill(#34A3F5);
  ellipse(escXvent(ejeXb),escYvent(ejeYb),escXvent(radioB),escYvent(radioB));
  
  fill(0);
  textAlign(CENTER);
  text("SEÑAL",ejeXb,ejeYb+5);
  
  rotacion++; 
  
 pop();
  
}
  
void movimiento(){   
 
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
 
void click(){
   
   if(mousePressed){ 
     
    float distancia = dist(mouseX,mouseY,trX, trY);
   
    if(distancia<escXvent(radioBC)){
     ejeXb=-1000; 
     ejeYb=-1000;
     movX=0;
     movY=0;
     trX=2000;
     trY=2000;
     radioB=0 ;
     
     player.rewind();
     player.play();

     contador+=1;    
    }    
   } 
  }
 
}//
 

 
 

 
