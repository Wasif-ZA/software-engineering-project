// =================================================================
//global variables / objects
StopWatchTimer sw;
// =================================================================
// Main functions
void setup() {
  size(400, 400);
  println (millis());
  sw = new StopWatchTimer();
  sw.start();
}
void draw () {
  time();
}
// =================================================================
// Other functions
void time() {
  background(#FFFFFF);
  fill(#000000);
  textAlign(CENTER);
  // textFont(words, 50);
  //
  //  text(second()+ , 350, 175);
  //
  //  text(":", 300, 175);
  //
  //  text(minute(), 250, 175);
  //
  //  text(":", 200, 175);
  //  text(hour(), 150, 175);
  text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), 150, 175);
}
// =================================================
// classes
class StopWatchTimer {
  int startTime = 0, stopTime = 0;
  boolean running = false; 
  void start() {
    startTime = millis();
    running = true;
  }
  void stop() {
    stopTime = millis();
    running = false;
  }
  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    }
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}
// ====================================================
