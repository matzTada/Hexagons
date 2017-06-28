//hexagon art inspired by METoA Ginza's design
//reference https://processing.org/examples/regularpolygon.html 



void setup() {
  size(800, 800);
  surface.setResizable(true);
}

void draw() {
  background(0);

  noFill();
  stroke(255);
  strokeWeight(5);

  float r = 100;

  pushMatrix();
  rotate(radians(30));
  for (float j = - width/r; j <  width/r; j++) {
    for (float i = - height/r; i < height/r; i++) {
      float tempX = i * 3 * r;
      float tempY = j * 2 * sin(radians(60)) * r;
      pushMatrix();
      translate(tempX, tempY);
      rotate(frameCount);
      polygon(0, 0, r, 6);
      popMatrix();
    }
  }

  for (float j = - width/r; j <  width/r; j++) {
    for (float i = - height/r; i < height/r; i++) {
      float tempX = i * 3 * r + 3 * cos(radians(60)) * r;
      float tempY = j * 2 * sin(radians(60)) * r + r * sin(radians(60));
      pushMatrix();
      translate(tempX, tempY);
      rotate(frameCount);
      polygon(0, 0, r, 6);
      popMatrix();
    }
  }
  popMatrix();

  for (float j = - width/r; j <  width/r; j++) {
    for (float i = - height/r; i < height/r; i++) {
      float tempX = i * 3 * r;
      float tempY = j * 2 * sin(radians(60)) * r;
      pushMatrix();
      translate(tempX, tempY);
      rotate(frameCount);
      polygon(0, 0, r, 6);
      popMatrix();
    }
  }

  for (float j = - width/r; j <  width/r; j++) {
    for (float i = - height/r; i < height/r; i++) {
      float tempX = i * 3 * r + 3 * cos(radians(60)) * r;
      float tempY = j * 2 * sin(radians(60)) * r + r * sin(radians(60));
      pushMatrix();
      translate(tempX, tempY);
      rotate(frameCount);
      polygon(0, 0, r, 6);
      popMatrix();
    }
  }

  println(frameRate);
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}