PImage[] birds = new PImage[12];

void setup() {
  size(500, 560);
  noCursor();
  for (int i = 0; i < birds.length; i++) {
    birds[i] = loadImage("Frame" + nf(i+1, 2) + ".png");  
  }
}

void draw() {
  int currentImage = int(map(mouseX, 0, width, 0, birds.length-1));
  image(birds[currentImage], 0, 0);
}
