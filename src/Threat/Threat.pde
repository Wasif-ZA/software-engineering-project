float x;
float y;

void setup(){
  x = 0;
  y = 0;
  size(600, 800);
}

void draw(){
  background(255);
  fill(0);
  rect(x+100,y+100,120,120);
  
  fill(175,48, 56);
  //Top spikes
  triangle(115, 40, 100, 100, 130, 100);
  triangle(145, 40, 130, 100, 160, 100);
  triangle(175, 40, 160, 100, 190, 100);
  triangle(205, 40, 190, 100, 220, 100);
  
  //Right spikes
 // fill(34, 47, 89);
  fill(175,48, 56);
  triangle(290, 115, 220, 100, 220, 130);
  triangle(290, 145, 220, 130, 220, 160); 
  triangle(290, 175, 220, 160, 220, 190);
  triangle(290, 205, 220, 190, 220, 220);
  
  //Left spikes
  fill(175,48, 56);
  triangle(20, 115, 100, 100, 100, 130);
  triangle(20, 145, 100, 130, 100, 160);
  triangle(20, 175, 100, 160, 100, 190);
  triangle(20, 205, 100, 190, 100, 220);
}
