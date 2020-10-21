/* Lautaro Gomez Morgante*/

/* El juego se relaciona con la primera pantalla. Ya que previamente a leer el mensaje, tendras que tener señal.
Para ello, el usuario debera recolectar señal y asi poder abrir el mensaje y continuar con la historia */

Juego_ juego;

import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup(){
  
size(1024, 768);
surface.setResizable(true);

minim = new Minim(this);
player = minim.loadFile("pop.mp3");

juego = new Juego_();

}

void draw(){
  
juego.draw();
 
}
  
 float escXvent(float valorX_){
 return map(valorX_ , 0, 1024, 0, width); 
 }  
    
 float escYvent(float valorY_){
 return map(valorY_ , 0, 768, 0, height);
 }
 
