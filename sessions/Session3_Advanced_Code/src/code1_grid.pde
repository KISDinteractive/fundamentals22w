int interval= 60; //how much space (in pixels) between lines?
int amount= 20;   //how many lines?

void setup() {
  size(800, 800);
  background(255);
}

void draw() {

  //draw horizontal lines
  for (int i = 0; i<amount; i++) {
    line(0, i*interval, width, i*interval);
  }

  //draw vertical lines
  for (int i = 0; i<amount; i++) {
    line(i*interval, 0, i*interval, height);
  }
}
