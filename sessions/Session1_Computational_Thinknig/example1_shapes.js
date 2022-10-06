function setup() {
  createCanvas(400, 400);
  background(0);
}

function draw() {
  //red square with white outline
  stroke(255);
  fill(255,0,0);
  rect(0, 0, 100, 90);
  
  //blue rectangle with no outline
  noStroke();
  fill(0,0,255);
  rect(100,100,200,100);
  
  //white cricle 
  fill(255);
  circle(300,300,150);
}
