

class Ejecutables{

 float x,y;
 
 float angulo;
      
 Ejecutables(){ 

 x= random(-100,120);
 y= random(-160,100); 
 

 angulo = random(radians(random(-90,20)));

 /*
 x= random( radians(random(20,50)));
 y= random( radians(random(20,50))); 
 */
   
}
    
    
void play(){
  
 float AMP = map(amp,minAmp, maxAmp, height, 0); 
 AMP = map(gestorAmp.filtradoNorm(), 0, 1, height, 0); 
 
 float PITCH = map(pitch,minPitch, maxPitch, height, 0); 
 PITCH = map(gestorPitch.filtradoNorm(), 0, 1, 0, height);   
 
 
translate(x,y);
rotate(angulo);
  
pushMatrix();  
 
 push(); // #1  Verde Inferior
 scale(1.5);
  colorMode(HSB);     
  stroke(85, map(AMP,0,width,150,255), map(PITCH,height,0,120,255));   
  strokeWeight(15);
                                 
 fill(95, map(AMP,0,width,80,150), map(PITCH,height,0,70,200)  ); 
 circ.dibujo2(8,470); 
 pop(); 


 push(); // #3  Azul grande
  scale(2.3);
  colorMode(HSB);     
  stroke(150,map(AMP,0,width,150,255),map(PITCH,height,0,20,255));
  strokeWeight(10);

   fill(150, map(AMP,0,width,0,150),  map(PITCH,height,0,50,255));
  circ.dibujo2(78,202); 
 pop();  
 

 push(); // #2  Amarillo 
  scale(1.3);
  colorMode(HSB);     
  noStroke();

  fill(40,map(AMP,0,width,150,255),map(PITCH,0,height,50,255));  
  circ.dibujo2(88,435); 
 pop(); 
 
 
  push(); // #4  Verde superior
  scale(1.3);
  colorMode(HSB);     
  noStroke();

  fill(60,map(AMP,0,width,150,255),map(PITCH,height,0,50,255));  
  circ.dibujo2(210,260); 
 pop(); 
 

 push(); // #4 Rojo
  scale(1);
  colorMode(HSB);     
  noStroke();

  fill(250,map(AMP,0,width,150,255),map(PITCH,0,height,50,255)); 
  circ.dibujo3(392,145); 
 pop();  

//****************************************************          
          
          
 push();
 scale(1); 
 circ.dibujo(75,625);
 pop();
   
 push();
 scale(1.5);
 circ.dibujo(120,310);
 pop();  
  
 push();
 scale(0.5);
 circ.dibujo(540,685); 
 pop();    
  
 push();
 scale(0.8);
 circ.dibujo(400,320); 
 pop();      
  
 push();
 scale(0.3);
 circ.dibujo(1220,620); 
 pop();   
  
  
popMatrix();

}
}
