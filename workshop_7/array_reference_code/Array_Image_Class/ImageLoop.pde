class ImageLoop {
  
  PImage[] frames;
  int currentImage = 0;

  ImageLoop(String fileName, int numFiles) {
    frames = new PImage[numFiles];
    for (int i = 0; i < frames.length; i++) {
      frames[i] = loadImage(fileName + nf(i+1, 2) + ".png");
    }
  }

  void update() {
    currentImage++;
    if (currentImage >= frames.length) {
      currentImage = 0;
    }
  }

  void display() {
    image(frames[currentImage], 0, 0);
  }
}
