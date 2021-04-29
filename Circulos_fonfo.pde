
class circulosFondo{ 

  float x, y, r, tx, ty, v, tam;  
  
  circulosFondo(){    
    r= 0; 
    v=v+1;  
  }
 
  
 void empezar( float tx, float ty){  
   dibujo(tx,ty); 

  }
   
 void dibujo( float tx, float ty){

  float v = map(mouseX,0,width/2,0,255);   
  
  float tam = map(mouseY,height+50,50,80,350);   

  float col = map(mouseY,height,0,116,166); // circulo VERDE
  
  float col2 = map(mouseY,height,0,150,211); // circulo AZUL
  

 for(int i=0; i<3 ;i++){
  translate(tx,ty);
    
  noStroke();
  fill(col,209,195);
  ellipse(0,0,tam,tam); 

  push(); 
   fill(42,77,col2); 
   noStroke();
   rotate(radians(v));
   arc (0,0,tam,tam,0,PI);    
  pop();  
  }
 
  fill(255,215,82);
  ellipse(100,100,tam,tam); 
 
 
 } 
 
  
}//
