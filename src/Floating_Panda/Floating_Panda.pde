float x = 10;
float y;
float z;
int incx = 2;
int incy = 2;


void setup(){
  x = 200;
  y = 50;
  size(600, 800);
}

void draw(){
  background(255);
  Panda();
  
  x += incx;
  if(x >= width-125 || x <= 20){
     incx *= -1; 
  }
  y += incy;
  if(y >= height-100 || y <= 20){
     incy *= -1;
  }
  
/*
This piece of code helps the Panda sketch to float around the screen. 
Both variables x and y use increment so that the sketch travels vertically and horizontally.
The if condition sets the boundaries of the Panda. 
Then the decrement is used so that the Panda could travel back and forth again after hitting the boundary.
*/
}

void Panda(){
  //Ears
  fill(0,0,0);
  rect(x-25, y-25, 50, 35);
  rect(x+75, y-25, 50, 35);
  
  //Face
  fill(255, 255, 255);
  stroke(0);
  strokeWeight(2);
  rect(x, y, 100, 100);
  
  //Eyes
  fill(0,0,0);
  //Left Eye
  rect(x+15, y+25, 25, 25);
  rect(x+1, y+38, 25, 25);
  //Right Eye
  rect(x+60, y+25, 25, 25);
  rect(x+74, y+38, 25, 25);
  
  fill(255, 255, 255);
  rect(x+24, y+33, 10, 10);
  rect(x+65, y+33, 10, 10);
  
  //Nose
  fill(236, 238, 239);
  
  
  //Nose background
  
  rect(x+27, y+50, 46, 35);
  
  //Actual Nose
  fill(0);
  rect(x+40, y+50, 20, 12);
  
  //Mouth
  fill(255, 46, 0);
  line(x+38, y+80, x+63, y+80);
  
  line(x+38, y+75, x+38, y+80);
  line(x+51, y+75, x+51, y+80);
  line(x+63, y+75, x+63, y+80);
}
