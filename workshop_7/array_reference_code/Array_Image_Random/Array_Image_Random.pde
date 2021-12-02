PImage[] birds = new PImage[12];
int currentImage = 0;

void setup() {
  size(500, 560);
  noCursor();
  for (int i = 0; i < birds.length; i++) {
    birds[i] = loadImage("Frame" + nf(i+1, 2) + ".png");
  }
  frameRate(12);
}

void draw() {
  image(birds[currentImage], 0, 0);
}

void mousePressed() {
  currentImage = int(random(0, birds.length));
  println(currentImage);
}
