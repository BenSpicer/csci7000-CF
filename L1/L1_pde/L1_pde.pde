import Turtle.*;
import processing.svg.*;

Turtle t;
float r; // radius

public enum SHAPES {
  TRIANGLE, PENTAGON, CIRCLE, I, T
}

void setup() {
  size(512,512);
  background(255);
  t = new Turtle(this);

  r = 100;

  noLoop();
}

void draw() {
  //ellipse(width/2, height/2, 2*r, 2*r);

  //for (int i = 0; i < SHAPES.values().length; i += 1) { 
    switch (SHAPES.values()[2]) {
      case TRIANGLE:
        nGon(3, r);
        break;
      case PENTAGON:
        nGon(5, r);
        break;
      case CIRCLE:
        nGon(360, r);
        break;
      case I:
        drawI();
        break;
      case T:
        drawT();
        break;
    }
  //}
}

void drawI() {
  t.push();

  t.push();
  t.left(90);
  t.forward(50);
  t.pop();
  t.push();
  t.right(90);
  t.forward(50);
  t.pop();

  drawT();
}

void drawT() {
  t.push();

  t.forward(100);

  t.push();
  t.left(90);
  t.forward(50);
  t.pop();
  t.right(90);
  t.forward(50);

  t.pop();
}

void nGon(int num_sides, float radius) {
  pushMatrix();
  float angle = PI*(num_sides-2)/num_sides;
  translate(radius*sin(angle/2), radius*cos(angle/2));
  angle = 180 - angle*180/PI;
  for (int i = 0; i < num_sides; i += 1) {
    t.forward(2*radius*sin(PI/num_sides));
    t.left(angle);
  }

  popMatrix();
}

void keyPressed() {
  switch (key) {
    case 's':
      // Export as SVG
      //press the 's' key to save a svg of your drawing
      if (key == 's') {
        // Name of the output file is "lsystem-" with a date string 
        String fileName = "output/Circ.svg";
        beginRecord(SVG, fileName);
        draw();
        endRecord();
        println("Saved to file: " + fileName);
      }
   }
 }
