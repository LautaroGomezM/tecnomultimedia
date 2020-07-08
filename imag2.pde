PImage imag2;
PImage celular;

float t=100;
float r=50;

void imag2(){
  
  background(255);
  
  imag2.resize(1024,764);
  image (imag2,0,0);
  
  noStroke();
  fill (#2B46DE,t);
  ellipse (897,402,r,r);
  r = r+1;
  if (r>100) {
    r=0;
  }
  if(r>50){
  t=t-2;
  } else{
  t=100;
  }
  
  celular.resize(280,285);
  image (celular,760,310);
  
}

//-----------------------------------------------------------
void clickimag2(){
  
  if (dist(897,402,mouseX,mouseY)<50 ){
  estado = "imag3";
  }
  
  
}
