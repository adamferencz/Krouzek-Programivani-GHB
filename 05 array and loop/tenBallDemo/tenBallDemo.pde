int[] x;
int[] y;
int[] d;
float[] s;
color[] c;


int count = 30;

void setup() {
  size(640, 360);

  x = new int[count];
  y = new int[count];
  d = new int[count];
  s = new float[count];

  for (int i = 0; i < count; i++) {
    //x[i] = 100 + int(random(1,300));
    //y[i] = 100 + int(random(1,300));
    x[i] = 20 * i;
    y[i] = 10 * i;
    d[i] = 50 + 5*i ;
    s[i] = 5 ;
  }

}

void draw() {

  background(255);

  for (int i = 0; i < count; i++) {
    //pohyb
    y[i] = y[i] - int(s[i]);

    //odraz
    if (y[i] > height || y[i] < 0) {
      s[i] *= -1;
    }


    circle(x[i], y[i], d[i]);
  }
}
