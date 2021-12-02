PImage[] birds = new PImage[12];
int currentImage = 0;

void setup() {
  size(500, 560);
  frameRate(12);
  for (int i = 0; i < birds.length; i++) {
    birds[i] = loadImage("Frame" + nf(i+1, 2) + ".png");  
  }
}

void draw() {
  
  image(birds[currentImage], 0, 0);
  
  currentImage++;
  if (currentImage >= birds.length) {
    currentImage = 0; 
  }
}
