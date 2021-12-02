/*
 
 Workshop TODO
 
 - Load background images within a for loop ✓
 - Slow down the background images so they only change every two seconds ✓
 - Add the Eadweard Muybridge ostrich animation to the center of the screen ✓
 - Control the ostrich frame playback with the mouseX 
 
*/

int imagealpha = 255;
int timedelay = 2000;

PImage[] images = new PImage[6];
int currentimage = 0;
int nextTime;

String file = "";

Ostrich bitch;

void setup() {
  size(1280, 720);
  // noCursor();
  frameRate(12);
  
  bitch = new Ostrich();

  for (int i = 0; i < 6; ++i) {
    file = "land" + str(i + 1) + ".jpg";
    images[i] = loadImage(file);
  }
  
  nextTime = millis() + timedelay;
}

void draw() {
  
  tint(255, imagealpha);
  image(images[currentimage], 0, 0);

  if (overCircle(768, 94, 40)) {
    bitch.update();
  }
  bitch.render(width/ 4, (height - width / 2) / 2, width / 2, width / 2);
  
  if (millis() > nextTime) {
    currentimage++;
    if (currentimage >= images.length) {
      currentimage = 0;
    }
    nextTime = millis() + timedelay;
  }
  
}


boolean overCircle(float x, float y, float r) {
  if (dist(mouseX, mouseY, x, y) < r) {
    return true;
  } else {
    return false;
  }
}

void mousePressed() {
  println(mouseX, ", ", mouseY);
}