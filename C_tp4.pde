
// AVENTURA 

import ddf.minim.*;

class tp4{
  
 Minim minim;
 AudioPlayer music;

 Pantallas fondo;
 Interaccion borde;  
 miniJuego juego;
  
 PImage[] ImagFondo;
 String estado; 
 int estadoMjuego;
 
 tp4(PApplet miApp){    
 minim = new Minim(miApp);  
 juego = new miniJuego();
 fondo = new Pantallas();   
 borde = new Interaccion();    
 ImagFondo = new PImage [20];

 estado = "Menu"; 
 estadoMjuego = 0;
 
 for (int i=0; i<20; i++ ){
  ImagFondo[i] = loadImage("silueta-"+nf(i+1,2)+".png");   
 }
}
 
void setup(){
 surface.setResizable(true);
 
 music = minim.loadFile("moogcity.mp3");
 music.play();
 music.loop();
}

void cambiarEstado(String nuevoEstado){  
  estado=nuevoEstado; 
}

void draw(){  
  
//----------------------------- Invocacion de imagenes(fondo) y posicion del marco blanco segun el estado


 if( estado.equals("Menu")){ // Menu principal 
 fondo.draw(ImagFondo[0]);
 borde.marco(511,380,150,50);  
 borde.marco(511,490,150,50);
 }
 
 else if( estado.equals("imag1")){ //Esperando avion 
 fondo.draw(ImagFondo[1]);
 borde.marco(447,219,150,50);
 }  
 
 else if( estado.equals("Mjuego")){ // MiniJuego
  
 if (estadoMjuego == 0){
    juego.draw(this);
    if (juego.preguntarSiGano()){ /*Ganaría*/
     }    
    else if (juego.preguntarSiPerdio()){ /*Perdería*/
    }
   }  
}
 
 else if( estado.equals("imag2")){ // Mensaje amenazador 
 fondo.draw(ImagFondo[2]);
  borde.marco(571,270,155,45);
  borde.marco(891,272,155,45); 
 } 
 else if( estado.equals("imag3")){ // Mensaje abierto (opciones)
 fondo.draw(ImagFondo[3]);
  borde.marco(175,405,155,45);
  borde.marco(521,195,155,45);
  borde.marco(868,404,155,45);  
 }  
 else if( estado.equals("imag4")){ // Escenario Irse  
 fondo.draw(ImagFondo[4]);
  borde.marco(870,282,155,45); 
 }  
 else if( estado.equals("imag5")){ // Escenario Policia
 fondo.draw(ImagFondo[5]);
  borde.marco(929,126,155,45); 
 }  
 else if( estado.equals("imag6")){  // (despues de ignorar o elegir no) Subiendo al avion 
 fondo.draw(ImagFondo[6]);
  borde.marco(405,156,155,45); 
 } 
 else if( estado.equals("imag7")){  // Avion explota
 fondo.draw(ImagFondo[7]);
  borde.marco(917,148,155,45); 
 }  
 else if( estado.equals("imag8")){  // Aparicion en la playa
 fondo.draw(ImagFondo[8]);
  borde.marco(409,153,155,45); 
 }  
 else if( estado.equals("imag9")){  // Playa (opciones)
 fondo.draw(ImagFondo[9]);
  borde.marco(168,623,155,45);
  borde.marco(514,456,155,45);
  borde.marco(848,623,155,45); 
 } 
 else if( estado.equals("imag10")){  // Refugio
 fondo.draw(ImagFondo[10]);
  borde.marco(908,132,155,45); 
 }  
 else if( estado.equals("imag11")){  // Fogata
 fondo.draw(ImagFondo[11]);
  borde.marco(903,121,155,45); 
 }  
 else if( estado.equals("imag12")){  // Explorar
 fondo.draw(ImagFondo[12]);
  borde.marco(927,116,155,45); 
 }  
 else if( estado.equals("imag13")){  // Rescate
 fondo.draw(ImagFondo[13]);
  borde.marco(442,133,155,45); 
 }  
 else if( estado.equals("imag14")){  // Creditos
 fondo.draw(ImagFondo[14]);
  borde.marco(512,695,155,45);  
 }  
 
}  
  
void mousePressed(){ //--------------------------------------- Areas del click 
   
 if( estado.equals("Menu")){    
 borde.mousePressed(511,380,75,25);  
 borde.mousePressed(511,490,75,25);
 //
 if(borde.mousePressed(511,380,75,25)){ 
 estado="imag1"; 
 }
 else if(borde.mousePressed(511,490,75,25)){
 estado="imag14"; 
 }}
//---------------------------------------------- 
 else if (estado.equals("imag1")){
 borde.mousePressed(447,219,75,25);    
  if(borde.mousePressed(447,219,75,25)){   
   estado= "Mjuego";
   juego= new miniJuego();
 }}
 else if (estado.equals("Mjuego")){
  juego.mousePressed();
 } 
//----------------------------------------------
 else if (estado.equals("imag2")){
 borde.mousePressed(571,270,75,25); 
 borde.mousePressed(891,272,75,25);
 // 
 if(borde.mousePressed(571,270,75,25)){  
 estado="imag3"; 
 } else if(borde.mousePressed(891,272,75,25)){  
 estado="imag6"; 
 }} 
//----------------------------------------------  
 else if (estado.equals("imag3")){
 borde.mousePressed(175,405,75,25); 
 borde.mousePressed(521,195,75,25);
 borde.mousePressed(868,272,75,25); 
 //
 if(borde.mousePressed(175,405,75,25)){  
 estado="imag4"; 
 } else if(borde.mousePressed(521,195,75,25)){  
 estado="imag6"; 
 }else if(borde.mousePressed(868,404,75,25)){  
 estado="imag5"; 
 }}  
//----------------------------------------------  
 else if (estado.equals("imag4")){
 borde.mousePressed(870,282,75,25);   
 if(borde.mousePressed(870,282,75,25)){  
 estado="Menu"; 
 }}  
 else if (estado.equals("imag5")){
 borde.mousePressed(929,126,75,25);   
 if(borde.mousePressed(929,126,75,25)){  
 estado="Menu"; 
 }}   
//---------------------------------------------- 
 else if (estado.equals("imag6")){
 borde.mousePressed(405,156,75,25);   
 if(borde.mousePressed(405,156,75,25)){  
 estado="imag7"; 
 }} 
//----------------------------------------------   
 else if (estado.equals("imag7")){
 borde.mousePressed(917,148,75,25);   
 if(borde.mousePressed(917,148,75,25)){  
 estado="imag8"; 
 }}  
//----------------------------------------------   
 else if (estado.equals("imag8")){
 borde.mousePressed(409,153,75,25);   
 if(borde.mousePressed(409,153,75,25)){  
 estado="imag9"; 
 }} 
//----------------------------------------------  
 else if (estado.equals("imag9")){
 borde.mousePressed(168,623,75,25); 
 borde.mousePressed(514,456,75,25);
 borde.mousePressed(848,623,75,25); 
 //
 if(borde.mousePressed(168,623,75,25)){  
 estado="imag10"; 
 } else if(borde.mousePressed(514,456,75,25)){  
 estado="imag11"; 
 }else if(borde.mousePressed(848,623,75,25)){  
 estado="imag12"; 
 }}   
//----------------------------------------------    
 else if (estado.equals("imag10")){
 borde.mousePressed(908,132,75,25);   
 if(borde.mousePressed(908,132,75,25)){  
 estado="imag13"; 
 }}  
//----------------------------------------------    
 else if (estado.equals("imag11")){
 borde.mousePressed(903,121,75,25);   
 if(borde.mousePressed(903,121,75,25)){  
 estado="Menu"; 
 }}  
 else if (estado.equals("imag12")){
 borde.mousePressed(927,116,75,25);   
 if(borde.mousePressed(927,116,75,25)){  
 estado="Menu"; 
 }}    
//----------------------------------------------    
 else if (estado.equals("imag13")){
 borde.mousePressed(442,133,75,25);   
 if(borde.mousePressed(442,133,75,25)){  
 estado="imag14"; 
 }}  
//----------------------------------------------    
 else if (estado.equals("imag14")){
 borde.mousePressed(512,695,75,25);   
 if(borde.mousePressed(512,695,75,25)){  
 estado="Menu"; 
 }}  
 }   
 
}//
