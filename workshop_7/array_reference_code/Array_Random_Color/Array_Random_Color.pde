color red = color(255, 0, 0);
color orange = color(255, 127, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color violet = color(75, 0, 130);

color[] rainbow = { red, orange, yellow, green, blue, violet };
int currentColor = 0;

void setup() {
  size(500, 560);
  background(255);
}

void draw() {
  if (mousePressed) {
    strokeWeight(10);
    stroke(rainbow[currentColor]);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  currentColor = int(random(rainbow.length));
}
