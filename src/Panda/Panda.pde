float x;
float y;
float z;

void setup(){
  x = width/2;
  y = height/2;
  size(800, 800);
}

void draw(){
  panda();
}

void panda(){
  //Ears
  fill(189, 4, 79);
  rect(x-25, y-25, 50, 35);
  rect(x+75, y-25, 50, 35);
  
  //Face
  fill(25, 55, 155);
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

  fill(236, 238, 200);

  
  
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
