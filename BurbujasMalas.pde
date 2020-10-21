
class burbujasM_ {
  
float radioM,radioMC,trX, trY, movX, movY, ejeXb, ejeYb,rotacion;

burbujasM_(){
  
  radioMC=50;
  radioM=100;  
  movX= random(-3,3);
  movY= random(-3,3);    
  trX=width/2;
  trY=height/2;
  ejeXb=0;
  ejeYb=0;
}
  
  void comenzar(){
  dibujo();
  movimiento();
  click2();  
}
  
void dibujo(){   
 push();
  noStroke();
  translate(trX,trY);
  rotate(radians(rotacion));
  
  fill(#F0301B);
  ellipse(escXvent(ejeXb),escYvent(ejeYb),escXvent(radioM),escYvent(radioM));
 
  rotacion++;  
 pop();
}
  
  
void movimiento(){   
   
   trX+=movX;
   trY+=movY;
   
   if(trX>width+radioM){
   trX=0-radioM;
   }
   if(trY>height+radioM){
   trY=0-radioM;   
   }
   if(trX<0-radioM){
   trX=width+radioM;    
   }
   if(trY<0-radioM){
   trY=height+radioM;    
   }         
}
 
 void click2(){
   
   if(mousePressed){  
    float distancia = dist(mouseX,mouseY,trX,trY);   
    if(distancia<escXvent(radioMC)){
     ejeXb=-1000; 
     ejeYb=-1000;
     movX=0;
     movY=0;
     trX=2000;
     trY=2000;
     radioM=0;
     
     player.rewind();
     player.play();
  
     vidas--;    
   } 
  }
 }   

}//
 
