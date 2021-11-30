class Jitter {
  float x = 300;
  float y = 300;
  float speed;
  float dia;

  Jitter(float tempDia, float tempSpeed) {
    dia = tempDia;
    speed = tempSpeed;
  }

  void move() {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }

  void display() {
    circle(x, y, dia);
  }
}
