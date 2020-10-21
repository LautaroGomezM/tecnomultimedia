int contador, vidas;

class Juego_{
  
Tablero_ HUD;

Celu_ puntero;

burbujasB_[] arregloBuenas;
int cantBuenas = 12;

burbujasM_[] arregloMalas;
int cantMalas = 40; 

Juego_(){
  
  arregloBuenas = new burbujasB_ [cantBuenas];
  for (int i=0; i<cantBuenas ; i++){
  arregloBuenas[i]= new burbujasB_();
}
  arregloMalas = new burbujasM_ [cantMalas];
  for (int i=0; i<cantMalas ; i++){
  arregloMalas[i]= new burbujasM_();
}

 HUD = new Tablero_();

 puntero= new Celu_();
 
 contador=0;
 vidas=3;
 
 }

 
//------------------------------------------------- 
 void draw(){
  background(#E5D394);

  for (int i=0; i<cantBuenas ; i++){
  arregloBuenas[i].comenzar();
}
  for (int i=0; i<cantMalas ; i++){
  arregloMalas[i].comenzar();
}

HUD.tablero();

if(contador<=9){  
 push();
 noCursor();
 noCursor();        
 puntero.celuPuntero();
 pop(); 
}
    
if (contador>=10){ //Win
  cursor();
  fill(#E5D394);
  rect(-5,-5,width+10,height+10);
  HUD.Win();
}

if (vidas<=0){  //Lose
  contador=10;
  cursor();
  fill(#E5D394);
  rect(-5,-5,width+10,height+10);
  HUD.Lose();
} 
   
 }
}
