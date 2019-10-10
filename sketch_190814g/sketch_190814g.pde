float s = 25;
int  ballX             = 0, ballY            = 0;
int   speedX            = 1, speedY             = 1;
float zoomfacktor = 1.01;


void setup() {
  size(600, 600);
  frameRate(30);
  background(150);
}

void draw() { 
  clear(); 
  background(150);      
  s= s * zoomfacktor;
  float ballwalk =  sin(ballX*0.5)*10; //svingning på +10 til -10 pixels 

  ballX         += speedX;    //flytter min bold 
  ballY         += speedY + ballwalk; //ball walk  gøre at der kommer en svingning på +10 til -10 pixels så den tilføjer vi til y verdien

  alien(ballX, ballY, s);

  if (s> 200) { 
    zoomfacktor = 0.9;
    speedX = 0;
    speedY = 0;
  }

  for (int j=0; j<10; ++j) {
    float y = ballY + j*s + j;
    for (int i=0; i<10; ++i) {
      float x = ballX + i*s + i;
      float d = (int)random(-3, 3);
      fill(20+(x + y)*0.25, 0, 0);
      alien(x+d, y+d, 25 );
    }
  }

  println(s);
}

void alien(float x, float y, float rad) {
  fill(0);
  ellipse( x, y + rad, rad, rad + (rad*0.5));
  fill(255);
  ellipse(x, y, rad, rad);
}
