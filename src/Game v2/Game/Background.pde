class Background {
  int Xcroods;
  int Ycroods;
  color background;
  Farmer framer;
  Panda panda;

  Background(int x, int y, color BG, Panda p, Farmer f) {
    Xcroods = x;
    Ycroods = y;
    background = BG;
    framer = f;
    panda = p;
  }

  void display() {
    background(background);

    fill(#539165);

    rect(Xcroods/2, Ycroods/2, 300, 300, 150);
  }

  void gameover() {
    String[] GameoverMessages = { "you win!", "game over!"};
    String message = " ";

    for (int i = 0; i < GameoverMessages.length; i++) {
      if (f.WallCondtion() == true) {
        GameoverMessages[0] = message;
      }

      if (count  == 10) {
        GameoverMessages[1] = message;
      }
      textSize(50);
      text(message, height/2 + 100, width/2 + 0);
    }
  }

  void WaterTexture(int XposStart, int xposEND, int amount) {
    for (int i = 0; i < amount; i++) {
      int x = int(random(XposStart, xposEND));
      int y = int(random(0, Ycroods));
      int size = int(random(1, 10));
      fill(#539165);
      noStroke();
      rect(x, y, size, size, 300);
    }
  }
}
