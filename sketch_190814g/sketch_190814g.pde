PShape alien, head, body;
float rad = 24;

float radA = 30;

float s = 1;
float circleX = 0;
float circleY = 1;
void setup() {
  size(600, 600);
frameRate(30);
  // Create the shape group
  alien = createShape(GROUP);

  // Make two shapes
  ellipseMode(CORNER);
  head = createShape(ELLIPSE, -25, 0, rad, rad);
  head.setFill(color(255));
  body = createShape(ELLIPSE, -25, 24, rad, radA);
  body.setFill(color(0));

  // Add the two "child" shapes to the parent group
  alien.addChild(body);
  alien.addChild(head);
}

void draw() {
  background(204);
scale(s);
  alien.translate(circleX,  circleY);
  shape(alien); // Draw the group

  // BEVÆGLSE AF BOLDEN

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
}
