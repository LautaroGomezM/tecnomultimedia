
void estadoImagenes () {

  if (estado=="pantallainicio") {  //Inicio
    println(instrucciones[2]);  
    imag1();
  }

  if (estado=="imag2") {          //llamada 
    imag2();
  }

  if (estado=="imag3") {          //pregunta de abrir mensaje
    println(instrucciones[3]);    
    imag3();
  }

  if (estado=="imag4") {          // eleccion en aeropuerto
    println(instrucciones[4]);  
    imag4();
  }

  if (estado=="imag5") {          //escapar
    println(instrucciones[5]);    
    imag5();
  }

  if (estado=="imag6") {          //si vas con la policia
    println(instrucciones[6]);    
    imag6();
  }

  if (estado=="imag7") {          //subiendo al avion
    println(instrucciones[7]);  
    imag7();
  } 

  if (estado=="imag8") {          // avion explota
    println(instrucciones[8]);  
    imag8();
  } 
  if (estado=="imag9") {          // caida de avion / playa
    println(instrucciones[9]);  
    imag9();
  }  
  if (estado=="imag10") {         //eleccion en playa
    println(instrucciones[10]);  
    imag10();
  }  
  if (estado=="imag11") {         // eleccion cueva (final)
    println(instrucciones[11]);  
    imag11();
  }  
  if (estado=="imag12") {         //fogata
    println(instrucciones[12]);  
    imag12();
  }   
  if (estado=="imag13") {         //explorar
    println(instrucciones[12]);      
    imag13();
  }    
  if (estado=="imag14") {         // juego terminado
    println(instrucciones[13]);  
    imag14();
  }  
  if (estado=="creditos") {       //creditos
    println(instrucciones[14]);        
    creditos();
  }
}
