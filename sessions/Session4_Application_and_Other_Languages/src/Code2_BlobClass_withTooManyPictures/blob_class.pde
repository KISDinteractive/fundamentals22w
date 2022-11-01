class Blob {
  float posY = 50;     //starting position of blob
  float posX= random(0, width);
  float speed = random(1, 10);     //speed of the blob
  PImage edi = loadImage("edi.png");

  Blob() {
  }

  void move() {
    //increment position of blob by adding "speed"
    posY = posY + speed;
  }
  void display() {
    //draw current (i) circle with corresponding posY
    image(edi, posX, posY, 100, 100);
  }
  void check() {
    //set back at the end of the screen
    if (posY > height) {
      posY=0;
    }
  }
}
