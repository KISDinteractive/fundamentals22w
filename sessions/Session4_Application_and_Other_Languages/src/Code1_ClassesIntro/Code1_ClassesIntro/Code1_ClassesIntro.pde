int posY = 50;     //starting position of blobs
int speed = 3;     //speed of the blobs

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  
  //styling
  fill(0);

  //increment position of blob by adding "speed"
  posY = posY + speed;

  //draw current (i) circle with corresponding posY
  circle (150, posY, 50);

  //set back at the end of the screen
  if (posY > height) {
    posY=0;
  }
}
