float[] x = new float[10];
float[] y = new float[10];
float[] ys = new float[10];

//ALT GR + F, G ----> [, ]
void setup(){
  size(640, 480);
  for ( int i = 0; i <10 ;i++ ){
    x[i] = i*40;
    y[i] = i*40;
    ys[i] = 1+i*0.5;
  }

}

void draw(){
  background(255);
  
  //ALT + 124 ---> ||

  for ( int i = 0; i <10 ;i++ ){
    y[i]+=ys[i];
    if (y[i] > height || y[i] < 0) {
       ys[i] *= -1; 
    }
    circle(x[i]+i, y[i]+i, 20);
  }
}
