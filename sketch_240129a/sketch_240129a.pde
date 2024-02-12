PGraphics pg;

void face() {
  int centerX = width/2;
  int centerY = height/2;
  ellipse(centerX,centerY,300,300);
  ellipse(centerX-50,centerY-50,50,50);
  ellipse(centerX+50,centerX-50,50,50);
  arc(centerX,centerY,50,50,190*PI/180,350*PI/180);
}

void setup() {
  print("setting up...");
  pg = createGraphics(400,400);
  size(600, 600);
  print("DONE");
  noLoop();
}

void draw() {
  background(200);
  face();
  //pg.beginDraw()
  ellipse(mouseX, mouseY, 20, 20);
  //pg.EndDraw();
}
