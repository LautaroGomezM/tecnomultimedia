
class Tablero_{

void Win(){
 cartelWin();
}
void Lose(){
 cartelLose();
}

void tablero(){
 
  push();
     rectMode(CENTER);
     strokeWeight(5);
     stroke(#2C6ABF);
     fill(#57DCF5,200);
     rect(240,90,400,100);
     
     textAlign(CORNER);
     textSize(15);
     fill(#2C6ABF);
     text("Antes de poder atender tendras que recuperar \n SEÑAL. Clickea sobre ellos hasta llegar a 10",70,80);    
  pop();
 
  push();
     textAlign(CENTER);
     textSize(15);
     fill(0);
     strokeWeight(5);
     text("Señal: "+contador, width/2, 50);
     text("Vidas: "+vidas, width/2+100, 50);
  pop();
  
}


void cartelWin(){
  push();
     textAlign(CENTER);
     textSize(20);
     fill(0);
     text("Bien hecho!",width/2,height/2);
     
     rectMode(CENTER);
     strokeWeight(5);     
     stroke(#2C6ABF);
     fill(#57DCF5);
     rect(width/2,height/2+200,200,80);
     
     textSize(25);
     fill(#2C6ABF);
     text("Contestar",width/2,height/2+210);    
  pop();  
}

void cartelLose(){    
  push();
     textAlign(CENTER);
     textSize(20);
     fill(0);
     text("Ups.. perdiste",width/2,height/2);
     
     rectMode(CENTER);
     strokeWeight(5);     
     stroke(#2C6ABF);
     fill(#57DCF5);
     rect(width/2,height/2+200,200,80);
     
     textSize(25);
     fill(#2C6ABF);
     text("Inicio",width/2,height/2+210);
  pop();
}

}
