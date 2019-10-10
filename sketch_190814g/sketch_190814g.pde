

void setup() {
  size(600, 600);
  frameRate(30);
  background(150);
}

void draw() { 
  clear(); 
  s= s * zoomfacktor;


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

}

void alien(float x, float y, float rad) {
  fill(0);
  ellipse( x, y + rad, rad, rad + (rad*0.5));
  fill(255);
  ellipse(x, y, rad, rad);
}
