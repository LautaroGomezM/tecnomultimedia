
circulosFondo cFondo;

CMenores cmenores;
CMayores cmayores;

void setup(){
  
  size(500,700);  
  
  cFondo = new circulosFondo();  

  cmayores = new CMayores();
  cmenores = new CMenores();
  
}

void draw(){
  
background(#DBDAC5);

cFondo.empezar(100,150);
  
cmayores.empezar(-100,-150);  
cmenores.empezar(100,150);  
  
}
