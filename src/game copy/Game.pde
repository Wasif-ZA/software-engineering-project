// Global Variables

int varX = 2; // the direction for the panda to float (x value)
int varY = 2; // the direction for the panda to float (y value)
int wallX; // values for the wall placement
int wallY; // value for the wall placement
 Farmer f = new Farmer(400, 400);
// Setup
void setup() {
  // Canvas
  size(1200, 700);
  background(20, 100, 24);


  // timer setup
  println (millis());
  sw = new StopWatchTimer();
  sw.start();
}

// Program
void draw() {
  background(255);
 
  f.buildf();

  // Panda
  //pandax = width/2;
  //panday =height/2 ;

  panda p = new panda(width/2, height/2);

  p.buildp();

  //Background background = new Background(width, height, #3F497F);
  //background.display();
  time();
  //panda();
  //farmer();
}


// Function "Background", This is the main stage for the entire game do this
// in progress

// Wall (interaction) do this
// in progress




// Collision detection

// Floating do tihs

// Movement Mechanics


void keyPressed() {
  f.move();
}
