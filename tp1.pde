

//Lautaro Gomez Morgante 79798/3 


void setup () {
 
  size (800, 800);
 
}

void draw () {
  
  background(0);
  
  fill(0);
  stroke (255);
  strokeWeight(10);
  ellipse (400, 400, 600, 600);  //base
  
  
  
  // lineas de colores primarios
  line(400,105,133,545); 
  line(133,545,655,545);
  line(655,545,400,105);
  //primarios:
  
  fill(255,255, 0 ); //amarillo
  ellipse (400, 105, 100, 100); 
  
  fill(50,50,255); //azul
  ellipse (133,545,100,100);
  
  fill(170,10,10); //rojo
  ellipse (655,545,100,100);
  
  
  
  
  
  
  // lineas de colores secundarios
  line (135,240,400,690);
  line (400,690,655,255);
  line (655,255,135,240);
  //secundarios:
  
  fill(14, 170, 50 );         //verde
  ellipse (135,240,100,100);
  
  fill(95,16, 134);          //violeta
  ellipse (400, 690, 100, 100); 
   
  fill(255,80, 0 );          //naranja
  ellipse (655,255,100,100);
  
  
  //terciarios:
  
  fill(3,140, 98 );
  ellipse (100, 400, 100, 100); 
  
  fill(230,12, 12);
  ellipse (690, 400, 100, 100); 
  
  fill(160,230, 12 );
  ellipse (235, 145, 100, 100);
  
  fill(255,190,12 );
  ellipse (550, 140, 100, 100);
  
  fill(175,7,90 );
  ellipse (550, 645, 100, 100);
  
  fill(18,16,134 );
  ellipse (235, 645, 100, 100);
  
}
