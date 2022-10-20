void setup() {
  size(800,800);
  background(255);
}

void draw(){
  if (mousePressed == true) {
    fill (mouseX,0,mouseY,50);
  } else {
    fill(255);
  }
  ellipse(mouseX,mouseY,80,80);
}
