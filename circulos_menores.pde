
class CMenores{
  
  float x, y, r, tx, ty, v, tam;
    
  CMenores(){    
    r= 0;
    v=v+1;
  }
   
  void empezar( float tx, float ty){    
   dibujo(tx,ty);  
  }
  
 void dibujo( float tx, float ty){
  
  float v = map(mouseX,0,width/2,0,255);
  
  float tam = map(mouseY,height+50,50,20,150);

  float col = map(mouseY,height,0,50,135); // mitad circulo - OSCURO 
  
  float col2 = map(mouseY,height,0,155,255); // circulo entero - CLARO
  

 for(int i=0; i<3 ;i++){
  translate(tx,ty);
    
  noStroke();
  fill(col);
  ellipse(0,0,tam,tam); 

  push(); 
   fill(col2);
   noStroke();
   rotate(radians(v));
   arc (0,0,tam,tam,0,PI);    
  pop();   
  }
 
 }
 
    
    
    
    
} //
