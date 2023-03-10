float x=0;
float y=100;
color c=color(0);
float velocidad=5;
void setup(){
  size(600,600);
}
//Comentario de prueba
void draw(){
  background(255);
  mover();
  desplegar();
  //noLoop();
}

void mover(){
  x= x + velocidad;
  if(x>width){
    x=0;
  }
}

void desplegar(){
  fill(c);
  rect(x,y,30,10);
    rect(x+40,y,30,10);
  
}
