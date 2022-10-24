int[] posY = {0, 100, 200, 300, 400};     //starting position of the 5 blobs
int[] speeds = {1, 2, 3, 4, 5};           //speed of the the 5 blobs

void setup() {
  size(800, 800);
}

void draw() {
  //styling stuff
  background(255);
  fill(0);

  for (int i = 0; i < 5; i = i+1) {
    //increment position of current (i) blob by adding "speed"
    posY[i] = posY[i] + speeds[i];

    //draw current (i) circle with corresponding posY
    circle (i*150, posY[i], 50);
    
    //set back at the end of the screen
    if (posY[i] > height) {
      posY[i]=0;
    }
  }
}
