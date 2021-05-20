

class Ejecutables{
 
 float x,y,c; 
      
 Ejecutables(){ 

 x= random(-100,120);
 y= random(-160,100); 
   
 c = random(60,190); 
 
 }
  
  
void play(){
 
translate(x,y);
  
pushMatrix();  

 
 push(); // #1  Verde 
 scale(1.5);
  colorMode(HSB);     
  stroke(c,map(mouseX,0,width,150,255),map(mouseX,0,width,150,255));
  strokeWeight(15);

  fill(95,map(mouseX,0,width,100,150),map(mouseY,height,0,150,200)); 
 circ.dibujo2(8,470); 
 pop(); 


 push(); // #3  Azul grande
  scale(2.3);
  colorMode(HSB);     
  stroke(150,map(mouseX,0,width,150,255),c);
  strokeWeight(10);

  fill(map(mouseX,0,width,150,90),map(mouseY,height,0,100,150),255);  
  circ.dibujo2(78,202); 
 pop();  
 

 push(); // #2  Amarillo inferior
  scale(1.3);
  colorMode(HSB);     
  noStroke();

  fill(map(mouseX,0,width,60,40),map(mouseY,height,0,100,255),255);  
  circ.dibujo2(88,435); 
 pop(); 
 
 
  push(); // #4  Amarillo superior
  scale(1.3);
  colorMode(HSB);     
  noStroke();

  fill(map(mouseX,0,width,60,40),map(mouseY,height,0,100,255),180);  
  circ.dibujo2(210,260); 
 pop(); 
 

 push(); // #4  Amarillo superior
  scale(1);
  colorMode(HSB);     
  noStroke();

  fill(245,map(mouseY,height,0,100,255),180);  
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
