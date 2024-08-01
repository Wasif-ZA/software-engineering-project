class BG {
  int Xcroods;
  int Ycroods;
  color BG;

<<<<<<< HEAD
  size(1000, 700);
 fill(40, 134, 184);
=======
  BG(int x, int y, color BG) {

    Xcroods = x;
    Ycroods = y;
    this.BG = BG;
  }

  void setBG(color BG) {
    this.BG = BG;
  }

  color getBG() {
    return BG;
  }

  void setXcroods(int x) {
    Xcroods = x;
  }

  int getXcroods() {
    return Xcroods;
  }

  void setYcroods(int y) {
    Ycroods = y;
  }

  int getYcroods() {
    return Ycroods;
  }
  

  void display() {
    background(BG);
    rectMode(CENTER);
    fill(#539165);
    noStroke();
    rect(Xcroods/2, Ycroods/2, 300, 300, 150);
  }
  
   void WaterTexture(int XposStart, int xposEND, int amount){
    for (int i = 0; i < amount; i++) {
      int x = int(random(XposStart, xposEND));
      int y = int(random(0, Ycroods));
      int size = int(random(1, 10));
      fill(#539165);
      noStroke();
      rect(x, y, size, size,300);
    }
  }
  
  void WaterTexture(int Xpos, int Ypos, int amount, int interval) {
    int size = 20;
    for (int i = 0; i < amount; i += interval) {
        while (Xpos < height) {
            rect(Xpos + i, Ypos, size, size);
            Xpos += size;  // Update Ypos to move vertically
            
        }
        Xpos = 0;  // Reset Ypos to the initial position for the next iteration
    }
>>>>>>> fbf8cd32f879d0e2a157f404d94906596874ae48
}

void tree(){


<<<<<<< HEAD
void draw() {


  water();
  canvas();
=======
>>>>>>> fbf8cd32f879d0e2a157f404d94906596874ae48
  
}



}
<<<<<<< HEAD
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
=======
>>>>>>> fbf8cd32f879d0e2a157f404d94906596874ae48
