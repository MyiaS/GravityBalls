//declare variables
float x, y, a, velY, diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velY = random(-5, 9);
  a=3;
  
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  fill (16,106,26);
  ellipse(x, y, diam, diam);

  //add velocity to position
  
  velY = velY+a;
  y += velY;

  //bounce ball if it hits walls
if ( y >= height) {
  velY = -abs(velY);
  y = height;
}
}