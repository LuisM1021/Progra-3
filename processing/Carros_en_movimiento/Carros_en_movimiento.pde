float x1=0,x2=0,x3=0,x4=0;
color azul=color(0,0,255);
color rojo=color(255,0,0);
color verde=color(0,255,0);
color morado=color(202,4,206);

Carro Honda; //Constructor 1
Carro Audi;//Constructor 2
Carro Mercedez;//Constructor 3
Carro Mazda;//Constructor 4

void setup() {
  size(600, 600);
  Honda= new Carro(); //Iniciallizar el objeto
  Audi= new Carro(); //Iniciallizar el objeto
  Mercedez= new Carro(); //Iniciallizar el objeto
  Mazda= new Carro(); //Iniciallizar el objeto
}

void draw() {
  background(255); 
  Honda.diseñoCarro(x1,100,color(azul));
  Honda.mover(3,1);
  
  Audi.diseñoCarro(x2,200,color(rojo));
  Audi.mover(3,2);
  
  Mercedez.diseñoCarro(x3,300,color(verde));
  Mercedez.mover(7,3);
  
  Mazda.diseñoCarro(x4,400,color(morado));
  Mazda.mover(7,4);
}

class Carro {
  color c;
  float xPos;
  float yPos;
  float xVelocidad;
  float yVelocidad;

  void mover(float velocidad,float noCarro)
  {
    if(noCarro==1)
    x1=x1+velocidad;
    if(noCarro==2)
     x2=x2+velocidad;
     if(noCarro==3)
      x3=x3+velocidad;
      if(noCarro==4)
       x4=x4+velocidad;
    if (x1>width) {
      x1=0;
    }
       if (x2>width) {
      x2=0;
    }
       if (x3>width) {
      x3=0;
    }
       if (x4>width) {
      x4=0;
    }
  }
  
  void diseñoCarro(float x,float y,color c){
  fill(c);
  rect(x,y,60,20);
  rect(x+15,y-15,25,15);
  fill(0,200,255);
  triangle(x+40,y-15,x+40,y,x+55,y);
  triangle(x+15,y-15,x+15,y,x+5,y);
  fill(0);
  ellipse(x+8,y+20,12,12);
  ellipse(x+45,y+20,12,12);
  fill(255,255,0);
  ellipse(x+55,y+5,7,7);
  }
}
