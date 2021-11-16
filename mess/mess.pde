float hue = 0.0;
color stroke_color = color(value1, value2, value3);


void setup() {
    background(#FFFFFF);
    colorMode()
}

void draw() {
    
}

void keyPressed() {
    if (key == ' ') {
        hue = random(0, 255);
        stroke_color = 
    }
    if (key == DELETE || BACKSPACE) {
        clear_canvas();
    }
}

void clear_canvas() {
    background(value1, value2, value3, alpha);
}