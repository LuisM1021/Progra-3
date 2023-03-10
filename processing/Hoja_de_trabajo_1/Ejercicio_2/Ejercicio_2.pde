int x=100;
int y=100;
int x1=0;
int y1=10;
int x2=10;
int y2=0;

void xcuadricula(int a,int b){
 
  line(a,b,x,b);
  b=b+10;
  }
  
  void ycuadricula(int a,int b){
 
  line(a,b,a,y);
  a=a+10;
  }

void cuadro(int xpos,int ypos){
  fill (161,161,161);
  rect(xpos,ypos,10,10);
}

  
void fila_cuadro(int xpos1,int ypos1,int xpos2,int ypos2, int no){
  fill (161,161,161);

  
  for(int i=0;i<no;i+=1){
  rect(xpos1,ypos1,10,10);

  if (xpos1==xpos2)
  ypos1+=10;
  else if (ypos1==ypos2)
  xpos1+=10;
  }
}

void diag_cuadro(int xpos1,int ypos1, int no){
  fill (161,161,161);
    for(int i=0;i<no;i+=1){
  rect(xpos1,ypos1,10,10);
  ypos1-=10;
  xpos1+=10;

  }
  
}

void setup() {
  size(100, 100);

}

void draw() {
  xcuadricula(x1,y1);
  ycuadricula(x2,y2);
  y1=y1+10;
  x2=x2+10;
  fila_cuadro(10,50,10,90,5);
  fila_cuadro(40,10,90,10,6);
  fila_cuadro(40,30,90,30,6);
  fila_cuadro(70,70,80,70,2);
  fila_cuadro(70,90,80,90,2);
  diag_cuadro(20,70,4);
  cuadro(10,10);
  cuadro(0,90);
  cuadro(40,20);
  cuadro(90,20);
  cuadro(60,80);
  cuadro(90,80);
}
