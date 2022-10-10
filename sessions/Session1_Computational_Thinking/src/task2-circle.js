function setup() {
  createCanvas(400, 400);
}

function draw() {
  
  //add some black background
  background(0);
  
  //add blue rectangle with white borders
  fill(0,0,255);
  stroke(255);
  rect(50, 50, 200, 100);
  
  //add red square with green borders
  fill(255,0,0);
  stroke(0,255,0);
  rect(200,300,140,50);
  
  //add white circle
  fill(255);
  stroke(0);
  ellipse(150,100,70,70);
}