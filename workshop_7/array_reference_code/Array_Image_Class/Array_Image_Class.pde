ImageLoop ostrich;

void setup() {
  size(500, 560);
  frameRate(24);
  ostrich = new ImageLoop("Frame", 12);
}

void draw() {
  ostrich.display();
  ostrich.update();
}
