void setup() {

  size(1000, 700);
  background(20, 100, 24);
}



void draw() {
 Background background = new Background(width,height,#3F497F);
 
  background.display(); 
 
  
  //bamboo(200, 150, 250, true); // generate lines every 150 pixels
  //bamboo(400, 500, 400, true); // generate lines every 150 pixels
  //bamboo(250, 275, 375, false); // generate lines every 150 pixels
  //bamboo(289, 600, 700, false); // generate lines every 150 pixels
  //bamboo(245, 600, 700, true); // generate lines every 150 pixels
  //bamboo(236, 400, 500, false); // generate lines every 150 pixels
  //bamboo(347, 600, 700, false); // generate lines every 150 pixels
  //bamboo(489, 600, 700, true); // generate lines every 150 pixels
  //bamboo(347, 300, 400, true); // generate lines every 150 pixels
  //bamboo(200, 300, 400, false); // generate lines every 150 pixels
  //sticks(100,300,350,true);
  //water();
  //canvas();
 
  
}

/* void canvas() {
  stroke(34, 140, 34);
  strokeWeight(50);
  line(0, 0, 0, 1000);
  line(0, 0, width, 0);
  line(width, 0, 1000, 700);
  line(1000, 700, width, 0);
}
void water () {

  fill(40, 134, 184);
  rect(300, 200, 400, 400);


}
/*
function returnsa set of lines with given intreval in between them and size 

float interval =  size of the inteveral 
int xy = is the value of the first y value in line(x1,y1,x2,y2)
int xy = is the value of the second y value in line(x1,y1,x2,y2)
boolean alt = is the alt colour which would be stroke(194, 258, 144);



*/
void bamboo(float interval, int yx, int xy, boolean alt) {
  // set stroke color and weight
  if (alt == true) {
    stroke(34, 139, 34);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) { // this dertmines the how far wide are the lines  
      line(y, yx, y, xy);
    }
  }
  if (alt == false) {
    stroke(194, 258, 144);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {
      line(y, yx, y, xy);
    }
  }
}


void sticks(float interval, int yx, int xy, boolean alt) {
  // set stroke color and weight
  if (alt == true) {
    stroke(150, 75, 0);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {
      line(y, yx, y, xy);
    }
  }
  if (alt == false) {
    stroke(196, 164, 132);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {
      line(y, yx, y, xy);
    }
  }
}


void rocks(float interval, int yx, boolean alt) {
  // set stroke color and weight
  if (alt == true) {
   
    strokeWeight(10);
    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {

       fill(70,130,180);
      circle(y,yx,50);

    }
  }
  if (alt == false) {
    stroke(196, 164, 132);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {

      circle(y,yx,50);

    }
  }
}

void waterlilys(float interval, int yx, boolean alt) {
  // set stroke color and weight
  if (alt == true) {
    stroke(150, 75, 0);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {
      fill(0,255,0);
      circle(y,yx,50);


    }
  }
  if (alt == false) {
    stroke(196, 164, 132);
    strokeWeight(10);

    // generate horizontal lines
    for (float y = 75; y <= width-50; y += interval) {

      fill(30,50,180);
      circle(y,yx,50);
      
    }
  }
}
