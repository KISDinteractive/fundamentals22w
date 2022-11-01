Blob[] myBlobs = new Blob[50];

void setup() {
  size(800, 800);
  for (int i=0; i<50; i++) {
    myBlobs[i] = new Blob();
  }
}

void draw() {
  background(255);
  for (int i=0; i<50; i++) {
    myBlobs[i].move();
    myBlobs[i].display();
    myBlobs[i].check();
  }
}
