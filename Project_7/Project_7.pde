/**
This charachter generator lets you create a cowboy bitch.
you can choose the shirt, the facial hair, the hair, and the background. 
 */


PImage[] Hats = new PImage[1];
PImage[] Hair = new PImage[2];
PImage[] Facial = new PImage[3];
PImage[] Shirts = new PImage[2];
PImage[] Backgrounds = new PImage[2];
PImage[] Knob1 = new PImage[2];
PImage[] Knob2 = new PImage[2];
PImage[] Knob3 = new PImage[3];
PImage[] Knob4 = new PImage[2];

PImage base;
PImage frame;

int hat = 0;
int hair = 0;
int face = 0;
int shirt = 0;
int back = 0;

void setup() {
    size(1500, 900);
    frame = loadImage("frame.png");
    base = loadImage("base.png");

    Hats[0] = loadImage("hat1.png");

    Hair[0] = loadImage("hair1.png");
    Hair[1] = loadImage("hair2.png");

    Facial[0] = loadImage("face1.png");
    Facial[1] = loadImage("face2.png");
    Facial[2] = loadImage("face3.png");

    Shirts[0] = loadImage("shirt1.png");
    Shirts[1] = loadImage("shirt2.png");

    Backgrounds[1] = loadImage("back1.png");
    Backgrounds[0] = loadImage("back2.png");

    Knob1[0] = loadImage("knob3a.png");
    Knob1[1] = loadImage("knob3b.png");

    Knob2[0] = loadImage("knob2a.png");
    Knob2[1] = loadImage("knob2b.png");
   
    Knob3[0] = loadImage("knob1a.png");
    Knob3[1] = loadImage("knob1b.png");
    Knob3[2] = loadImage("knob1c.png");
    
    Knob4[0] = loadImage("knob4a.png");
    Knob4[1] = loadImage("knob4b.png");
    // Backgrounds = {loadImage("back1.png"), loadImage("back2.png"), loadImage("back3.png")};
    
}

void draw() {
    image(Backgrounds[back], 0, 0, width, height);
    image(base, 413, 145, 675, 900);
    image(Shirts[shirt], 413, 145, 675, 900);
    image(Facial[face], 413, 145, 675, 900);
    image(Hair[hair], 413, 145, 675, 900);
    image(Hats[hat], 413, 145, 675, 900);

    image(frame, 0, 0, width, height);

    image(Knob1[shirt], 1121.7, 135, 205, 200);
    image(Knob2[hair], 256.0, 178, 140, 140);
    image(Knob3[face], 1072.9, 580, 160, 160);
    image(Knob4[back], 237.3, 572, 129, 183);
}

void mousePressed() {
    if (overRect(1121.7, 135, 205, 200)) {
        shirt++;
        if (shirt > 1) {
            shirt = 0;
        }
    }
    if (overRect(1072.9, 580, 160, 160)) {
        face++;
        if (face > 2) {
            face = 0;
        }
    }
    if (overRect(256.0, 178, 140, 140)) {
        hair++;
        if (hair > 1) {
            hair = 0;
        }
    }
    if (overRect(237.3, 572, 129, 183)) {
        back++;
        if (back > 1) {
            back = 0;
        }
    }
}

boolean overRect(float x, float y, float w, float h) {
  // If the (x,y) are inside the rect, return 'true'
  if (mouseX > x && mouseX < x+w &&
      mouseY > y && mouseY < y+h) {
    return true;
  } 
  else {
    return false; 
  }
}
