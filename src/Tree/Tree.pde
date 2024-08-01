int x;
int y;
void setup(){
  size(600, 800);
  x = 0;
  y = 0;
}

void draw(){
  background(255);
  fill(135, 62, 35);
  //Main
  rect(x+300, y+400, 20, 300);
//rect(x+305, y+200, 10, 200);
  //Branches
  line(x+200, y+160, x+300, y+400);
  line(x+500, y+100, x+320, y+400);
  line(x+380, y+180, x+400, y+268);
  line(x+520, y+180, x+400, y+268);
  line(x+280, y+180, x+258, y+300);
  line(x+150, y+180, x+258, y+300);
}
