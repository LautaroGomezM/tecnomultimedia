
class Circulos{
  
float x,y,c; 

  Circulos(){    
  x=0;
  y=0;
  
  c = random(50,255); 
  }
  
void dibujo(float x, float y){
   
  
 float PITCH = map(pitch,minPitch, maxPitch, height, 0); 
 PITCH = map(gestorPitch.filtradoNorm(), 0, 1, 0, height);   

   
translate(x,y);

 push();                         /* Circulos ByN */ 
  rotate(radians(map(PITCH,0,width,0,720)));        
   stroke(255);
   strokeWeight(25);
   fill(0);
   ellipse(0,0,125,125);
     
   noStroke();   
   fill(20);  /* circ Negro */
   arc(0,0,150,150,0,PI);   
   fill(255); /* circ Blanco */
   arc(0,0,100,100,0,PI);      
 pop();
 }
  
void dibujo2(float x, float y){  /* Circulos con Color */   
 translate(x,y);
 push();   
  rotate(radians(map(mouseX,0,width,0,720)));
  ellipse(0,0,125,125);
 pop();       
 }  

 void dibujo3(float x, float y){  /* MedioCirc ROJO */
 translate(x,y);
 rotate(radians(122));
 push();   
  arc(0,0,200,200,0,PI);
 pop();       
 }  


}//
