int x = 15;
int y = 15;
int incx = 2;
int incy = 2;

void setup(){
  size(600,700);
}

void draw(){
  background(10, 10, 10);
  fill(255,255,255);
  ellipse(x,y,10,10);

  x += incx;
  if(x >= width-15 || x <= 15){
     incx *= -1; 
  }
  y += incy;
  if(y >= height-15 || y <= 15){
     incy *= -1;
  }
}
