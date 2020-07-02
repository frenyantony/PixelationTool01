class Grid {
  float x;
  float resetX;
  float y;
  float resetY;
  float size;
  float resetSize;
  color c;
  float angle;

  Grid (float x_, float y_, float size_, color c_) {
    x = x_;
    y = y_;
    size = size_;
    c = c_;
    angle = 0;
    resetX = x;
    resetY = y;
    resetSize = size;
  }

  void reset() {
    x = resetX;
    y = resetY;
    size = resetSize;
  }

  boolean proximity(float px, float py, float distance) {
    if (dist(x, y, px, py) < distance) {
      return true;
    } else {
      return false;
    }
  }

  void wiggle(float wig, boolean mode) {
    x = x + random(-wig, wig);
    y = y + random(-wig, wig);
    if (mode) {
      size = size + random(1);
    } else {
      size = size - random(1);
      if (size < 0) size = 0;
    }
    if (random(1) < 0.5) {
      angle++;
    } else {
      angle--;
    }
  }

  void makeGrid() {
    //stroke(#000000);
    //strokeWeight(1);
    noStroke();
    fill(c);
    push();
    translate(x, y);
    rotate(radians(angle));
    rectMode(CENTER);
    rect(0, 0, size, size);
    pop();
  }
}
