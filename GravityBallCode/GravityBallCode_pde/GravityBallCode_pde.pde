
//declare variables
int count=30;
//declare arrays
float [] x = new float [count];
float [] y = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];
float [] a = new float [count]; 


void setup() {
  //set size of canvas
  size(800, 600);
  int i=0;


  //initialize variables
  while (i<count) {
    x[i]= random(0, width);
    y[i]= random(0, height);
    velY[i]= random(-5, 5);
    diam[i]=random(5, 100);
    a[i] = 1;
    //i insreases by 1
    i++;
  }
  }

void draw() {
  //draw background to cover previous frame
  background(0);
  int i=0;
  //draw ball

  //bounce ball if it hits walls
  while (i< count) {
    fill(255);
    ellipse(x[i], y[i], diam[i], diam[i]);
    
    velY[i] = velY[i] + a[i];
 y[i] += velY[i];
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
  }
  
    
}