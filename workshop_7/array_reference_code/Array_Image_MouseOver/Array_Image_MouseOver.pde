PImage[] birds = new PImage[12];
int currentImage = 0;

void setup() {
  size(500, 560);
  frameRate(24);
  for (int i = 0; i < birds.length; i++) {
    birds[i] = loadImage("Frame" + nf(i+1, 2) + ".png");
  }
}

void draw() {

  image(birds[currentImage], 0, 0);

  if (overCircle(340, 60, 50) == true)  {
    currentImage++;
    if (currentImage >= birds.length) {
      currentImage = 0;
    }
  }

  //println(mouseX, mouseY);
}

boolean overCircle(float x, float y, float r) {
  if (dist(mouseX, mouseY, x, y) < r) {
    return true;
  } else {
    return false;
  }
}
