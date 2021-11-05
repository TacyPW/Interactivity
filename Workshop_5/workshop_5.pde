PImage images[] = new PImage[2];
PFont fonts[] = new PFont[2];

void setup() {
    size(600,300);
    surface.setResizable(true);
    images[0] = loadImage("blue.jpg");
    images[1] = loadImage("gray.jpg");
    fonts[0] = createFont("VarelaRound-Regular.ttf", 96);
}

void draw() {
    image(images[1], 0, 0, width, height);
    image(images[0], (0.1*height), (0.1*height), width - 0.2 * height, height - 0.2 * height);
    
    textFont(fonts[0], 0.2*height);
    textLeading(0.3*height);
    textAlign(CENTER, CENTER);
    text("Jan. 15, 2015\n at 2:51 p.m.", 0,0,width,height);
}
