
/* TP Final tecnologia 1 - Aventura Grafica con MiniJuego */

/* Lautaro Gomez Morgante - 76798/3 */

tp4 empiezaTp4;

void setup(){ 
size(1024,768);
empiezaTp4 = new tp4(this); 
empiezaTp4.setup();   
}

void draw(){
background(250,230,190);
empiezaTp4.draw();
}

void mousePressed(){    
empiezaTp4.mousePressed();  
}
