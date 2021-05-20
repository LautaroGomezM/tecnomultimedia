
Ejecutables ejecutables;

Circulos circ;

void setup(){
  size(500,700);
  background(#E3D79C); 
  
  circ = new Circulos(); 
  ejecutables = new Ejecutables();
  
}

void draw(){
  
 ejecutables.play();


 
}
