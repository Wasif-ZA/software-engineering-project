  int pandax;
  int panday;
  Panda p;

// Farmer
void panda(){
  pandax = 700;
  panday = 700;
}

 
 class Panda {
  void buildp(){
    //Ears
    fill(189, 4, 79);
    rect(pandax-25, panday-25, 50, 35);
    rect(pandax+75, panday-25, 50, 35);
    
    //Face
    fill(25, 55, 155);
    stroke(0);
    strokeWeight(2);
    rect(pandax, panday, 100, 100);
    
    //Eyes
    fill(0,0,0);
    //Left Eye
    rect(pandax+15, panday+25, 25, 25);
    rect(pandax+1, panday+38, 25, 25);
    //Right Eye
    rect(pandax+60, panday+25, 25, 25);
    rect(pandax+74, panday+38, 25, 25);
    
    fill(255, 255, 255);
    rect(pandax+24, panday+33, 10, 10);
    rect(pandax+65, panday+33, 10, 10);
    
    //Nose
    fill(236, 238, 200);
    
    //Nose background
    rect(pandax+27, panday+50, 46, 35);
    
    //Actual Nose
    fill(0);
    rect(farmerx+40, farmery+50, 20, 12);
    
    //Mouth
    fill(255, 46, 0);
    line(pandax+38, panday+80, pandax+63, panday+80);
    line(pandax+38, panday+75, pandax+38, panday+80);
    line(pandax+51, panday+75, pandax+51, panday+80);
    line(pandax+63, panday+75, pandax+63, panday+80);
  }
 }
