class Background {
  int Xcroods;
  int Ycroods;
  color Background;

  Background(int x, int y, color background) {

    Xcroods = x;
    Ycroods = y;
    this.Background = background;
  }

  void display() {
    background(Background);
    rectMode(CENTER);
    fill(#539165);
    noStroke();
    rect(Xcroods/2, Ycroods/2, 300, 300, 150);
    
  }
}
