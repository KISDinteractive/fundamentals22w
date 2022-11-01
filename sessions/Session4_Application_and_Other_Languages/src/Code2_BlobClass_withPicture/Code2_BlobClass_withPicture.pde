Blob myBlob1;

void setup() {
  size(800, 800);
  myBlob1 = new Blob();
}

void draw() {
  background(255);
  myBlob1.move();
  myBlob1.display();
  myBlob1.check();
}
