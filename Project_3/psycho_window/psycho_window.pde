/*
This exercise is an exploration in the pointlessness of life. 
Why do something now when it is going to annoy you again tommorow?

the reason is that sometimes doing things can be helpful when they achieve a purpose
cleaning your windows for example, that makes you happy. 
what if the dirt on your windows though isnt physical, but more delusional
more in your head. the contexts that you place on every thing outdoors get reupped
with every wrong move that you make.
it can be a lot to think about. 
*/
String title = "Psycho Window";
String description = "it will always get dirty again.";
        PFont inconsolata;
  
void setup() {
    size(800, 900);
    colorMode(HSB, 360, 1, 1, 1);
    render_noise();
    rectMode(CORNERS);
    frameRate(120);

}

void draw() {

  inconsolata = loadFont("Inconsolata-Regular-48.vlw");
    squeegee(mouseX, mouseY, mousePressed);
    render_window();
    fill(#000000);
    noStroke();
    textSize(20);
  textFont(inconsolata, 62);
  text(title, 200, 123);
    textFont(inconsolata, 26);

  text(description, 200, 789);
}

void render_window() {
    noStroke();
    fill(#FFFFFF);
    rectMode(CORNERS);
    rect(0, 750, 800, 900);
        rect(0, 0, 800, 150);


    rect(0, 0, 200, 700);
    rect(0, 720, 200, 900);
        rect(800 - 200, 0, 800, 700);
    rect(800 - 200, 720, 800, 900);
    
    
    rect(0, 0, 190, 900);
    rect(800-190, 0, 800, 900);


    noFill();
    stroke(#000000);
    strokeWeight(2);
    rectMode(CORNER);

    rect(200, 150, 400, 550);
    rect(200 + 20, 150 + 20, 170, 245);
    rect(200 + 20, 150 + 40 + 245, 170, 245);

    rect(410, 150 + 20, 170, 245);
    rect(410, 150 + 40 + 245, 170, 245);



    rect(200 - 10, 700, 400 + 20, 20);


    rect(200, 720, 400, 30);

}

void render_noise() {
    for (int i = 120; i < width-60; i++) {
        for (int j = 80; j < height-100; j++) {
            color c = color(random(0, 360), 1, 1, 1);    
            set(i, j, c);
        }
    }
}

void squeegee(float x, float y, boolean why) {
    strokeWeight(5);
    stroke(#FFFFFF);
    if (why) {
    line(x-50, y-50, x+50, y+50);
    }
}

void keyPressed() {
    if (key == 's') {
        saveFrame();
    }
    else {
            render_noise();
    }
}
