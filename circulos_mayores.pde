
class CMayores{

  float x, y, r, tx, ty, v, tam;
    
  CMayores(){  
    r= 0; 
    v=v+1;  
  } 
  
  void empezar( float tx, float ty){    
   dibujo(tx,ty); 
  }
  
 void dibujo( float tx, float ty){

  float v = map(mouseX,0,width/2,0,255);   
  
  float tam = map(mouseY,height+50,50,50,170);   

  float col = map(mouseY,height,0,127,210); // mitad circulo - Color blanco
  
  float col2 = map(mouseY,height,0,0,127); // circulo entero  - color negro
  

 for(int i=0; i<3 ;i++){
  translate(tx,ty);
    
  noStroke();
  fill(col);
  ellipse(0,0,tam,tam); 

  push(); 
   fill(col2);
   noStroke();
   rotate(radians(v));
  // arc (0,0,tam,tam,radians(90),radians(270));
   arc (0,0,tam,tam,0,PI);   
  pop();   
  }
 
 }
 
    
    
    
    
} //
