void setup() {
  size (800, 800);
}

void draw() {
  background(255);

  //Parameters are: X Position, Y Position, Width, Height
  myRect(100, 130, 100, 100);
}

void myRect(int posX, int posY, int myWidth, int myHeight) {
  //define starting and ending x and y
  int startX=posX;
  int startY=posY;
  int endX=posX+myWidth;
  int endY=posY+myHeight;

  //draw vertical lines
  for (int i = startX; i<endX; i++) {
    point(i, startY);
    point(i, endY);
  }
  
  //draw horizontal lines
  for (int i = startY; i<endY; i++) {
    point(startX, i);
    point(endX, i);
  }
}
