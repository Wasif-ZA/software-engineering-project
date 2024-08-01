    int count = 0;

class Panda {
  int pandax;
  int panday;
  int incx;
  int incy;
 

  Panda(int x, int y ) {
    pandax = x;
    panday = y;
    incx = 2;  // Initial increment for x position
    incy = 2;  // Initial increment for y position
  }
  int getPandax() {
    return pandax;
  }

  // Setter for pandax
  void setPandax(int x) {
    pandax = x;
  }

  // Getter for panday
  int getPanday() {
    return panday;
  }

  // Setter for panday
  void setPanday(int y) {
    panday = y;
  }

  int floating() {
    String message = "Count: ";
    pandax += incx;
    if (pandax >= width-125 || pandax <= 20) {
      incx *= -1;
      count++;
    }
    panday += incy;
    if (panday >= height-100 || panday <= 25) {
      incy *= -1;
      count++;
    }
    text(message + count, 110, 85);
    if(count >= 10){
      //rect(0,0,1000,1000);
      text("YOU LOSE" , width/2, height/2);
      count = 10;
    return count;
    }
    return 0;
  }
  void buildp() {
    //Ears
    // Ears
    fill(0, 0, 0);
    rect(pandax - 25, panday - 25, 50, 35);
    rect(pandax + 75, panday - 25, 50, 35);

    // Face
    fill(255, 255, 255);
    stroke(0);
    strokeWeight(2);
    rect(pandax, panday, 100, 100);

    // Eyes
    fill(0, 0, 0);
    // Left Eye
    rect(pandax + 15, panday + 25, 25, 25);
    rect(pandax + 1, panday + 38, 25, 25);
    // Right Eye
    rect(pandax + 60, panday + 25, 25, 25);
    rect(pandax + 74, panday + 38, 25, 25);

    fill(255, 255, 255);
    rect(pandax + 24, panday + 33, 10, 10);
    rect(pandax + 65, panday + 33, 10, 10);

    // Nose
    fill(236, 238, 239);

    // Nose background
    rect(pandax + 27, panday + 50, 46, 35);

    // Actual Nose
    fill(0);
    rect(pandax + 40, panday + 50, 20, 12);

    // Mouth
    fill(255, 46, 0);
    line(pandax + 38, panday + 80, pandax + 63, panday + 80);

    line(pandax + 38, panday + 75, pandax + 38, panday + 80);
    line(pandax + 51, panday + 75, pandax + 51, panday + 80);
    line(pandax + 63, panday + 75, pandax + 63, panday + 80);
  }
}
