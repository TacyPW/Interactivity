class MovingLine {
  float x1, y1, x2, y2;
  float speed = 1;
  
  void setPosition(int x, int y, int px, int py) {
    x1 = x;
    y1 = y;
    x2 = px;
    y2 = py;
  }
  
  void display() {
    x1 += random(-speed, speed);
    y1 += random(-speed, speed);
    x2 += random(-speed, speed);
    y2 += random(-speed, speed);
    line(x1, y1, x2, y2);
  }
}
