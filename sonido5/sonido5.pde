
import oscP5.*;

Ejecutables ejecutables;

Circulos circ;

//-------------------------------
// variables calibracion

float minAmp = 45; // minimo AMP
float maxAmp = 100; // max AMP

float f =  0.79;

boolean monitor = false;


float minPitch = 35;
float maxPitch = 100;

//----------------------------


float amp;

float pitch;


GestorSenial gestorAmp;
GestorSenial gestorPitch;

OscP5 osc;

void setup(){
size(500,700); 
  
 circ = new Circulos(); 
 ejecutables = new Ejecutables();

 osc = new OscP5(this, 12345);

 gestorAmp = new GestorSenial (minAmp,maxAmp,f); // min/max Amp
 gestorPitch = new GestorSenial (minPitch,maxPitch,f); // min/max Pitch
  
}

void draw(){  
 background(#E3D79C);  

 ejecutables.play();

 gestorAmp.actualizar(amp);
 gestorPitch.actualizar(pitch); 
 
 if (monitor){
 gestorAmp.imprimir(0,200);
 gestorPitch.imprimir(0,300,500,100,false,true);
 }

}

void oscEvent (OscMessage m){
  
  if(m.addrPattern().equals("/amp")){   
    amp= m.get(0).floatValue();
    //println("amp:"+amp);
  }  
    if(m.addrPattern().equals("/pitch")){   
    pitch= m.get(0).floatValue();
    //println("pitch:"+pitch);
  }  
}
