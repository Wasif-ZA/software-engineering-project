// Global Variables

int varX = 2; // the direction for the panda to float (x value)
int varY = 2; // the direction for the panda to float (y value)
int wallX; // values for the wall placement
int wallY; // value for the wall placement
Farmer f = new Farmer(400, 400);
Panda p = new Panda(width/2, height/2);
// Setup
void setup() {
  // Canvas
  size(1000, 700);
  background(20, 100, 24);


  // timer setup
  println (millis());
  sw = new StopWatchTimer();
  sw.start();
  f.wall();
  // f.WallCondtion();
  boolean test =   f.WallCondtion();
  println(test);
}

// Program
void draw() {

  Background background = new Background(width, height, #3F497F, p, f);
 background.WaterTexture(1000, 700, 10);
  background.display();
  background.gameover();
 
  p.floating();
  p.buildp();
  //p.countWall();
  f.buildf();
  f.WallCondtion();



  // Panda
  //pandax = width/2;
  //panday =height/2 ;


  time();
  //panda();
  //farmer();

  fill(#539165);

  rect(600, 60, 20, 20);
  rect(410, 310, 20, 20);
  rect(210, 110, 20, 20);
  rect(610, 510, 20, 20);
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
