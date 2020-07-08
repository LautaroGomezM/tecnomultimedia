
String estado;
 
void setup(){
   
size(1024,768);
estado = "pantallainicio";
   
   imagcielo=loadImage("cielo.png");            //Inicio
   imaginicio=loadImage ("imaginicio.png");
   avion=loadImage("avion.png");
   jugar=loadImage("jugar.png");
   creditos=loadImage("creditos.png");
//----------------------------------------------   
   imag2=loadImage("imag2.jpg");                //pantalla2
   celular=loadImage("celular.png");
//----------------------------------------------    
   imag3=loadImage("imag3.jpg");                //pantalla3
//----------------------------------------------   
   imag4=loadImage("imag4.jpg");                //pantalla4
//----------------------------------------------      
   imag5=loadImage("imag5.jpg");                //pantalla5 
//----------------------------------------------      
   imag6=loadImage("imag6.jpg");                //pantalla6    
//----------------------------------------------      
   imag7=loadImage("imag7.jpg");                //pantalla7    
//----------------------------------------------      
   imag8=loadImage("imag8.jpg");                //pantalla8     
//----------------------------------------------      
   imag9=loadImage("imag9.jpg");                //pantalla9     
//----------------------------------------------      
   imag10=loadImage("imag10.jpg");              //pantalla10      
//----------------------------------------------      
   imag11=loadImage("imag11.jpg");              //pantalla11     
//----------------------------------------------      
   imag12=loadImage("imag12.jpg");              //pantalla12        
//----------------------------------------------      
   imag13=loadImage("imag13.jpg");              //pantalla13    
//----------------------------------------------      
   imag14=loadImage("imag14.jpg");              //pantalla14     

//---------------------------------------------- CREDITOS        

 creditocielo=loadImage ("cielo2.png");
 vidrio=loadImage ("vidrio.png");
 base=loadImage ("base.png"); 
 avion2=loadImage ("avion.png"); 
 texto=loadImage ("texto.png");  


}
 
void draw(){
  
println(mouseX,mouseY);
   
if (estado=="pantallainicio"){
     inicio();
   }
 
if (estado=="imag2"){
     imag2();
   }
 
if (estado=="imag3"){
   imag3();
 }
 
if (estado=="imag4"){
   imag4();
 }
 
if (estado=="imag5"){
   imag5();
 }

if (estado=="imag6"){
   imag6();
 }

if (estado=="imag7"){
   imag7();
 } 

if (estado=="imag8"){
   imag8();
 } 
if (estado=="imag9"){
   imag9();
 }  
if (estado=="imag10"){
   imag10();
 }  
if (estado=="imag11"){
   imag11();
 }  
if (estado=="imag12"){
   imag12();
 }   
if (estado=="imag13"){
   imag13();
 }    
if (estado=="imag14"){
   imag14();
 }  
if (estado=="creditos"){
   creditos();
 }  
 
}
   
  void mousePressed(){
    
    if (estado=="pantallainicio"){
       clickinicio();
    }  
    
    else if (estado=="imag2"){
       clickimag2();
    }  
    else if (estado=="imag3"){
       clickimag3();
    }  
    else if (estado=="imag4"){
       clickimag4();
    }  
    else if (estado=="imag5"){
       clickimag5();
    }  
    else if (estado=="imag6"){
       clickimag6();
    }  
    else if (estado=="imag7"){
       clickimag7();
    } 
    
   else if (estado=="imag8"){
      clickimag8();
    }     
   else if (estado=="imag9"){
      clickimag9();
    }     
   else if (estado=="imag10"){
      clickimag10();
    }      
   else if (estado=="imag11"){
      clickimag11();
    }     
   else if (estado=="imag12"){
      clickimag12();
    }     
   else if (estado=="imag13"){
      clickimag13();
    }          
   else if (estado=="imag14"){
      clickimag14();
    }          
   else if (estado=="creditos"){
      clickcreditos();
    }     
    
}
