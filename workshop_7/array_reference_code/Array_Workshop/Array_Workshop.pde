/*
 
 Workshop TODO
 
 - Load background images within a for loop
 - Slow down the background images so they only change every two seconds
 - Add the Eadweard Muybridge ostrich animation to the center of the screen
 - Control the ostrich frame playback with the mouseX
 
*/

int imagealpha = 255;
int timedelay = 500;

PImage[] images = new PImage[6];
int currentimage = 0;
int nextTime;

void setup() {
  size(1280, 720);
  noCursor();
  
  images[0] = loadImage("pia11178.jpg");
  images[1] = loadImage("pia21580.jpg");
  images[2] = loadImage("pia21600.jpg");
  images[3] = loadImage("pia21605.jpg");
  images[4] = loadImage("pia22052.jpg");
  images[5] = loadImage("pia22348.jpg");
  
  nextTime = millis() + timedelay;
}

void draw() {
  
  tint(255, imagealpha);
  image(images[currentimage], 0, 0);
  
  if (millis() > nextTime) {
    currentimage++;
    if (currentimage >= images.length) {
      currentimage = 0;
    }
    nextTime = millis() + timedelay;
  }
  
}
