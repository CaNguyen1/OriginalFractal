public void setup(){
  size(1000,1000);
  rectMode(CENTER);
}
public void draw()
{
 // int myColor;
  background(0);
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  noLoop();
  myFractal(500,500,500,500);
}
public void myFractal(int x, int y, int width, int length){
  ellipse(x,y,width,length);
  if(width > 5 && length > 5)
  {
    myFractal(x-width/2,y,width/2, length/2);
    myFractal(x+width/2,y,width/2, length/2);
    myFractal(x,y+width/2,width/2, length/2);
    myFractal(x,y-width/2,width/2, length/2);
  }
}
