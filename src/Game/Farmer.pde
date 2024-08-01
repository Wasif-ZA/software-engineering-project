  int farmerx;
  int farmery;
  Farmer f;

// Farmer
void farmer(){
  farmerx = 400;
  farmery = 400;
}

class Farmer {

  void buildf(){
   //Face
  fill(183,130,114,255);
  rect(farmerx,farmery,50,50);
  
  //Cheek1
  fill(144,94,67,255);
  rect(farmerx,farmery+30,10,20);
  
  //Cheek2
  fill(144,94,67,255);
  rect(farmerx+40,farmery+30,10,20);
  
  //Mouth
  fill(119,66,53,255);
  rect(farmerx+12,farmery+34,25,10);
  
  //Nose
  fill(144,94,66,255);
  rect(farmerx+17,farmery+30,15,25);
   
  //Unibrow
  fill(51,36,17,255);
  rect(farmerx+8,farmery+10,35,5);

  //Eye1
  fill(0,150,17,255);
  rect(farmerx+13,farmery+15,5,5);
  
  //Eye2
  fill(0,150,17,255);
  rect(farmerx+31,farmery+15,5,5);
  }
}
