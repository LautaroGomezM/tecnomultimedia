

class CMenores{
  
  float x, y, r, tx, ty, v, tam;
  
  
  CMenores(){
    
    r= 0;
    
    v=v+1;
    
    tam = 100;
     
    tx = random(width);   // translate X 
    ty = random (height);  // translate Y  
  }
 
  
  void empezar(){
    
   dibujo(); 
   girar(); 
  }
  
 void girar(){
   
    x = width/2 +r *cos(frameCount *0.1);
    y = height/2 +r *sin(frameCount *0.1);  
   
   
 }
  
 void dibujo(){
     
 translate(tx,ty);
 
  fill(150,0,0);
  ellipse(0,0,tam,tam); 

 push();
  fill(#238DDB);
  noStroke();
  
  if(mouseX>200){
   v++; 
  }else{
   v--; 
  }

  if(mouseY<200){
   tam++; 
  }else{
   tam--; 
  }  
  
  
  rotate(radians(v));
  arc (0,0,tam,tam,0,PI);    
  pop();
   
 }
  
  
  
  
  
  
  
  
  
  
}
