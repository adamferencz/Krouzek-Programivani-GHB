int[] x;

int[] y;
int d;
int[] speed;
int bCount;

void setup() {
  bCount = 10;
  size(640, 480);
  x = new int[bCount];
  y = new int[bCount];
  speed = new int[bCount];

  for (int i = 0; i < bCount; i++) {
    x[i] = 50 + 50*i;
    y[i] = 50;
    speed[i] = (int)random(5, 15);
  }

  d = 50;
}

void draw() {
  background(255);
  
  for (int i = 0; i < bCount; i++) {
    //logic
    y[i] += speed[i];

    if (y[i] > height || y[i] < 0) {
      speed[i] *= -1;
    }
    //draw
    circle(x[i], y[i], d);
  }
}
