void setup() {
  size(800, 800);
  background(250);
}
void draw() {
  int interval= 60;  //distance between each line
  int amount= 20;    //number of lines to be drawn

  //draw vertical lines from left to right
  for (int posX = 0; posX<amount; posX++) {
    line(posX*interval, 0, posX*interval, height);
  }

  //draw horizontal lines from top to bottom
  for (int posY = 0; posY<amount; posY++) {
    line(0, posY*interval, width, posY*interval);
  }
}
