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


void setup() {
  size(100, 100);

}

void draw() {
  xcuadricula(x1,y1);
  ycuadricula(x2,y2);
  y1=y1+10;
  x2=x2+10;
 // background(255);
  line(0,0,90,60);
  point(0,20);
  point(0,40);
  rectMode(CORNER);
  rect(50,0,40,30);
  ellipseMode(CENTER);
  ellipse(30,70,40,40);

}
