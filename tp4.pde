import ddf.minim.*;
Minim minim;
AudioPlayer player;

String estado;

void setup() {

  size(1024, 768);

  estado = "pantallainicio";

  cargarImagenes(); 

  minim = new Minim(this);
  player = minim.loadFile("moogcity.mp3");
  player.play();

  instrucciones = new String[15];
  instrucciones[0]= "Recoge señal para poder hablar (tocar 3 veces)"; 
  instrucciones[1]= "Ya estas conectado"; 
  instrucciones[2]= "Estas listo ??";
  instrucciones[3]= "no veo porque no..."; 
  instrucciones[4]= "Si fuera tú le diría a la policía..."; 
  instrucciones[5]= "al parecer no puedes escapar de esto"; 
  instrucciones[6]= "tendras que confiar unicamente en tí"; 
  instrucciones[7]= "que tengas buen viaje "; 
  instrucciones[8]= "al parecer no es tu dia "; 
  instrucciones[9]= "parece un bonito lugar"; 
  instrucciones[10]= "elige sabiamente...";  
  instrucciones[11]= "que suerte tienes ";  
  instrucciones[12]= "al parecer no eres bienvenido"; 
  instrucciones[13]= "Buena eleccion";  
  instrucciones[14]= "FELICIDADES! juego terminado";   
  
}

void draw() {
  
  tamImagenes(1024, 764);
  estadoImagenes();
  
}

void mousePressed() {
  
  estadoClick();
      
}
