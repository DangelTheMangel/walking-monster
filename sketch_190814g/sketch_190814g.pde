float s = 25; //dette er den størlse
int  ballX             = 0, ballY            = 0; // dette er monsteret x og y kodinatter
int   speedX            = 1, speedY             = 1; // dette er dens fart
float zoomfacktor = 1.01; //dette er størlsen som alien ændre sig med

void setup() {
// her sætter jeg vindues størrelse, framrate og bagrund
  size(600, 600);
  frameRate(30);
  background(150);
}

void draw() {
// her fjender hvad der er tegnet og lægger en ny bagrund
  clear(); 
  background(150); 
  
// dette ændre størelsen 
  s= s * zoomfacktor;
//svingning på +10 til -10 pixels
  float ballwalk =  sin(ballX*0.5)*10;  

//flytter min bold 
  ballX         += speedX; 
//ball walk  gøre at der kommer en svingning på +10 til -10 pixels så den tilføjer vi til y verdien
  ballY         += speedY + ballwalk; 


// dette styre alien så den ikke går ud fra vinduet
  if (s> 200) { 
    zoomfacktor = 0.9;
    speedX = 0;
    speedY = 0;
  }
  // dette tegner et gitter af danse aliens
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

// her definere jeg hvad en alien er 
void alien(float x, float y, float rad) {
  fill(0);
  ellipse( x, y + rad, rad, rad + (rad*0.5));
  fill(255);
  ellipse(x, y, rad, rad);
}
