int posX=0;
int posY=0;

void setup() {
  size(800, 800);
}
void draw () {
  //Follow the mouse vertically
  if (mouseX>posX) {
    posX++; //go down, if mouse is lower than circle
  } else {
    posX--; //go up, if mouse is higher than circle
  }
  //Follow the mouse horizontally
  if (mouseY>posY) {
    posY++;  //go right, if mouse is right of circle
  } else {
    posY--;  //go left, if mouse is left of circle
  }
  //draw circle
  circle(posX, posY, 100);
}
