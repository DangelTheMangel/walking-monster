// dette definer figuren alien
PShape alien, head, body;
float rad = 24;

// dette er de to radiuser vi bruger til opbygningen af alien
float rad = 24;
float radA = 30;

// s er sørtelsen på alienen
float s = 1;

// dette er kodinaterne hos alien
float circleX = 0;
float circleY = 1;
float circleY = 10;

void setup() {
  size(600, 600);
frameRate(30);
  // Create the shape group
  size(300, 300);
  //sætter framraten så man kan se hvad der sker. 
  frameRate(10);
  
  // laver en gruppe af figure kalder den alien fordi jeg ikke kan stave til monster på engelsk
  alien = createShape(GROUP);

  // Make two shapes
  // laver hovedet og kroppen på monsteret
  ellipseMode(CORNER);
  head = createShape(ELLIPSE, -25, 0, rad, rad);
  // dette er farven på hovdet
  head.setFill(color(255));
  body = createShape(ELLIPSE, -25, 24, rad, radA);
  //dette er farven på kroppen
  body.setFill(color(0));

  // Add the two "child" shapes to the parent group
  // det her definer hvad den består af
  alien.addChild(body);
  alien.addChild(head);
}

void draw() {
  //giver farve til bagrund
  background(204);
  // dette bestemmer størrelsen
scale(s);

// tegner alien og bestemmer hvor den skal være
  alien.translate(circleX,  circleY);
  shape(alien); 

// gøre alien støre 
    s= s * 1.1;
    
    if(circleY == 1){
      circleX = 1;
 circleY = 0;
    }
    else
    {
      circleX = 0;
 circleY = 1;
    }
  //dette definer størrelse på alien været rundte 
  scale(s);
  
  // dettte tegner alienen været rundte og bestemmer hvor den skal være 
  alien.translate(circleX, circleY);
  shape(alien); 


// dette gøre alien større
  s= s * 1.1;
// det er det der bevæger alien så det ligner den går ned af en trappe
  if (circleY == 10) {
    circleX = 10;
    circleY = 0;
  } else
  {
    circleX = 0;
    circleY = 10;
  }
}
