PFont fuente;

PImage creditocielo;
PImage vidrio;
PImage base;
PImage avion2;
PImage texto;

float xa=1200;
float ya=50;
float yt=400;

void creditos(){

 creditocielo.resize(1024,764);
 image (creditocielo,0,-5);
 
 avion2.resize(500,400);
 image (avion2,xa,ya);
 xa=xa-5;
 ya=ya+1;
   if (xa<-500){
   xa=1200;
   ya=50;
 }
 
 vidrio.resize(1024,764);
 image (vidrio,0,5);
 
 texto.resize(1024,764);
 image (texto,20,yt); 
 yt=yt-2;
 if (yt<=0){
 yt=0;
}
 
 base.resize(1024,770);
 image (base,0,0); 
 
 fuente=loadFont("PrestigeEliteStd-Bd-15.vlw");
 
 if (yt<=0){
 fill(200);
 textFont(fuente);
 text ("Has click para ir a inicio",50,750);
}

}

void clickcreditos(){
  
if (yt<=0){
 estado="pantallainicio";
}
  
}
