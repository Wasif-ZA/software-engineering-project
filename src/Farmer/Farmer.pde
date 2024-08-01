//Global variables
int x;
int y;

void setup(){
  x = width/2;
  y = height/2;
  size(100,1000);

}

void draw(){
  farmer();
  
}

void farmer(){
  //Face
  fill(183,130,114,255);
  rect(x,y,50,50);
  
  //Cheek1
  fill(144,94,67,255);
  rect(x,y+30,10,20);
  
  //Cheek2
  fill(144,94,67,255);
  rect(x+40,y+30,10,20);
  
  //Mouth
  fill(119,66,53,255);
  rect(x+12,y+34,25,10);
  
  //Nose
  fill(144,94,66,255);
  rect(x+17,y+30,15,25);
   
  //Unibrow
  fill(51,36,17,255);
  rect(x+8,y+10,35,5);

  //Eye1
  fill(0,150,17,255);
  rect(x+13,y+15,5,5);
  
  //Eye2
  fill(0,150,17,255);
  rect(x+31,y+15,5,5);

}
