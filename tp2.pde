// Lautaro Gomez Morgante - 76798/3 

//------------------------------ ejes "y" de creditos:
int Ymusic = 4500;     // eje "y" de musica
int Ypsecun = 3300;    // eje "y" de personajes secundarios
int Ypprin = 2500;     // eje "y" de personaje principal
int Yprod = 1500;      // eje "y" de produccion
int Ytitulo = 500;          // eje "y" de titulo

//------------------------------ ejes "y" de imagenes:

int Yimagtitulo = 500;  
int Yimagprod = 1500;
int Yimagpprin = 2500;
int Yimagpsecun = 3500;
int Yimagmusic = 4400;

//------------------------------

PFont fuente;    // TIPOGRAFIA

//------------------------------

PImage titulo;   
PImage logo1;    // png credito izq
PImage logo2;    // png credito der
PImage producc;   
PImage pprinci;
PImage psecun;
PImage music;

void setup () {

  size (1500, 1000);

  fuente = loadFont ("MyriadArabic-Bold-48.vlw");
  textFont (fuente);

  titulo = loadImage ("imagtitulo.jpg");    // pantalla titulo
  logo1 = loadImage ("logo1.png");          // logo izq
  logo2 = loadImage ("logo2.png");          // logo der  
  producc = loadImage ("imagproducc.jpg");
  pprinci = loadImage ("imagprinci.jpg");
  psecun = loadImage ("imagsecun.jpg");
  music = loadImage ("imagmusic.png");
  
 
}


void draw () {

 background (0);


//------------------------------------------------------------------------------------------------------------------
// IMAGENES:
  
 image (titulo,0, Yimagtitulo-500);
 image (producc,0, Yimagprod-500);
  pprinci.resize (1500,1000);
 image (pprinci,0, Yimagpprin-500);
 image (psecun,0, Yimagpsecun-500);
 image (music,0, Yimagmusic-300);


// CREDITOS:
//-----------------------------------------------// titulo
  
 
  textAlign (CENTER);
  float D = dist (width/2, 0, mouseX,0);
  fill (255,D);    // titulo "el renacido"
  float T = dist (width/2, 0, mouseX,0);
  textSize (map (T, 100, 300,30,35));
  text ( "E L    R E N A C I D O", width/2, Ytitulo );
  Ytitulo = Ytitulo -1;
  Yimagtitulo = Yimagtitulo -1;


//-----------------------------------------------// produccion
                     
    textSize (30);
    text (" Producción", width/2, Yprod );
    textSize (40);
    text (" Alejandro González Iñárritu  \n Arnon Milchan \n Steve Golin \n", width/2, Yprod+60 );
    Yprod = Yprod -1;
    Yimagprod = Yimagprod -1;


//-----------------------------------------------//personajes principales

    textSize (30);
    text (" Personajes Principales", width/2, Ypprin );
    textSize (40);
    text (" Leonardo DiCaprio", width/2, Ypprin+60 );
    Ypprin = Ypprin -1;
    Yimagpprin = Yimagpprin -1;


//-----------------------------------------------//personajes secundarios

    textSize (30);
    text (" Personajes Secundarios", width/2, Ypsecun );
    textSize (40);
    text (" Tom Hardy \n Domhnall Gleeson \n Will Poulter \n Forrest Goodluck \nDuane Howard\nArthur Redcloud \nMelaw Nakehk o \nGrace Dove\nLukas Haas \nKristoffer Joner \n Brad Carter ", width/2, Ypsecun +60 );
    Ypsecun = Ypsecun -1;
    Yimagpsecun = Yimagpsecun -1;


//-----------------------------------------------//Musica

    textSize (30);
    text (" Música", width/2, Ymusic );
    textSize (40);
    text (" Ryuichi Sakamoto \n Alva Noto \n Byce Dessner  ", width/2, Ymusic +60 );
    Ymusic = Ymusic -1;
    Yimagmusic = Yimagmusic -1;
  
    logo1.resize ( 200, 240);           //logo izq
    image (logo1, 400, Ymusic +300);
    logo2.resize ( 300, 200);           //logo der
    image (logo2, 900, Ymusic +320);
    

}

 
