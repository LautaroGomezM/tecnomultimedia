
// Minijuego

class miniJuego{  

InteracMiniJuego inte;

InteracMiniJuego[] arregloBurbujas;
InteracMiniJuego[] arregloBurbujasM;

int cantBuenas= 15; 
int cantMalas= 40; 

int conteo= 0;
int vidas= 3;

 miniJuego(){  
 
 inte = new InteracMiniJuego();  
 arregloBurbujas = new InteracMiniJuego [cantBuenas];
 arregloBurbujasM = new InteracMiniJuego [cantMalas]; 
 
 for (int i=0; i<cantBuenas ; i++){
 arregloBurbujas[i]= new InteracMiniJuego();
 }
 for (int i=0; i<cantMalas ; i++){
 arregloBurbujasM[i]= new InteracMiniJuego();
 } 

}

void cartel(){
  push();  
   fill(0);
   textAlign(CENTER);
   textSize(15);
   text("Señal: "+conteo,width/2-50,height/2/7*1);
   text("Vidas: "+vidas,width/2+50,height/2/7*1);    
  pop();    
} 

//--------------------------------------------------------------- 
  
void draw(tp4 aventura){ 

 push();  
  for (int i=0; i<cantBuenas ; i++){
  arregloBurbujas[i].comenzarBuenas();  
  }
  for (int i=0; i<cantMalas ; i++){
  arregloBurbujasM[i].comenzarMalas();  
  }  
  
  if (conteo>=10){
   println("Ganaste! puedes ver el mensaje");
   aventura.cambiarEstado("imag2");
  }
  if (vidas<=0){
   println("Perdiste (solo los circulos azules dan SEÑAL)");
   aventura.cambiarEstado("Menu");
  }   
 pop(); 

 cartel();
} 

boolean preguntarSiGano(){  
 conteo =0; 
 for (int i=0; i<cantBuenas ; i++){
 if(arregloBurbujas[i].click==true){
  conteo++;
 }}  
 if(conteo>=10){
  return true;
 } else {
  return false; 
 } 
}

boolean preguntarSiPerdio(){
 vidas= 3; 
  for (int i=0; i<cantMalas ; i++){
 if(arregloBurbujasM[i].click==true){
  vidas--;
 }}  
 if(vidas<=0){
  return true;
 } else {
  return false; 
 } 
}

void mousePressed(){ 
 
 for(int i=0; i<cantBuenas ; i++){  
 arregloBurbujas[i].mousePressed();
 } 
 for(int i=0; i<cantMalas ; i++){  
 arregloBurbujasM[i].mousePressed();
 }}
 
}//
