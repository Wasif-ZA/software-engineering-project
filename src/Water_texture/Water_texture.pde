int x;
int y;
void setup(){
 
  size(600, 800);
  x = 0;
  y = 0;
}

void draw(){
  background(255);
  noStroke();
  fill(37, 150, 190);
  rect(x+0, y+100, 600, 600);
  
  stroke(238,238,228);
  line(x+90, y+650, x+200, y+650);
  line(x+190, y+600, x+290, y+600);
  line(x+410, y+650, x+490, y+650);
  line(x+290, y+250, x+400, y+250);
  line(x+90, y+350, x+200, y+350);
  line(x+390, y+350, x+500, y+350);
  line(x+90, y+550, x+200, y+550);
  line(x+170, y+500, x+280, y+500);
  line(x+410, y+500, x+520, y+500);
  line(x+90, y+150, x+200, y+150);
}
