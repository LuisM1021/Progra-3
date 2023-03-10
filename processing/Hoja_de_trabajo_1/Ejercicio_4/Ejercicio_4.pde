void setup(){
 size(300, 300);

}

void draw(){
  background(255);
  fill(155,155,155);
  ellipse(width/2,height/2,width/2,height/2);
  stroke(155,155,155);
  line(0,0,width,height);
  line(0,height,width,0);
  line(0,0,width,0);
  stroke(0);
  rect(0+(width/16),height/2.3,width/8,height/8);
  rect(0+(width/1.23),height/2.3,width/8,height/8);
  

  noLoop();
}
