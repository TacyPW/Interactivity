// Libraries
import processing.pdf.*;

// Global variables
boolean mouse_active = false;
int run_wave = 0;
int alternator = 1;
int grid_increment = 20;
int inch = 80;
float ppX = 0;
float ppY = 0;
float pX = 0;
float pY = 0;
float cX = 0;
float cY = 0;
float firstX = 0.0;
float firstY = 0.0;
float lastX = 0.0;
float lastY = 0.0;
color bg = #FFFFFF;

boolean recording;
PGraphicsPDF pdf;

// Colors
color white = #FFFFFF;
color fluo_pink = #FF48B0;
color med_blue = #3255A4;
color yellow = #FFE800;
color brown = #925F52;
color teal = #00838A;
color red = #F15060;
color black = #000000;

// boilerplate
public void settings() {
    size(int(4.5 * inch), int(5.5 * inch));
}

void setup() {
    background(bg);
    //surface.setResizable(true);
    surface.setTitle("Collage Pattern World");
    pdf = (PGraphicsPDF) createGraphics(width, height, PDF, str(hour()) + str(minute()) + str(second()) +"_page.pdf");
    clear_screen();
}

void draw() {
    if (alternator == 1) {
        radius_corner(mouseX, mouseY);
    }
    else if (alternator == 2) {
        if (run_wave == 1) {
            wavescape(pX, pY, cX, cY);
        }
    }
    else if (alternator == 3) {
        radius_corner(mouseX, mouseY);
    }
}

// Pattern Functions

void grid() {
    noStroke();
    fill(brown);
    for (int i = 0; i < int(width / grid_increment) + 10; ++i) {
        for (int j = 0; j < int(height / grid_increment) + 10; ++j) {
            ellipse(i * grid_increment, j * grid_increment, 2, 2);
        }
    }
}

void radius_corner(float x, float y) {
    if (mousePressed) {
        noStroke();
        float grid_x = closestMultiple(x, 20);
        float grid_y = closestMultiple(y, 20);
        
        //println(grid_x, grid_y);
        
        fill(fluo_pink);
        rect(grid_x, grid_y, grid_increment, grid_increment);
        
        fill(white);
        arc(grid_x, grid_y, 1.9 * grid_increment, 1.9 * grid_increment, 0, 0.25 * TAU);
    }
}

void wavescape(float x1, float y1, float x2, float y2) {
    if (run_wave == 2) {

        // if (x1 > x2) {
        //     if (y1 > y2) {
        //         firstX = x1;
        //         firstY = y1;
        //         lastX = x2;
        //         lastY = y2;
        //     }
        //     else {
        //         firstX = x2;
        //         firstY = y2;
        //         lastX = x1;
        //         lastY = y1;
        //     }
        // }
        // else {
        //     firstX = x2;
        //     firstY = y2;
        //     lastX = x1;
        //     lastY = y1;
        // }

        noFill();
        strokeWeight(1);
        stroke(med_blue);
        for (int i = 0; i < y1 - y2; i += 20) {
            beginShape();
            for (int j = 0; j < x2 - x1; j += 5) {
                curveVertex(x1 + j, y1 + i + random( - 10, 10));
            }
            endShape();
        }
        run_wave = 0;
    }
} 

// Funcional Functions

void clear_screen() {
    background(#FFFFFF);
    grid();
}

float closestMultiple(float n, float x) {  
    if(x > n) { 
        return 0;
    }
    n = n + x / 2;
    n = n - (n % x);
    return n;
}

// Event Functions

void keyPressed() {
    // screen formatting
    if (key == '8') {
        surface.setSize(int(4.5 * inch), int(5.5 * inch));
    }    
    else if (key == '1') {
        surface.setSize(int(17 * inch), int(11 * inch));
    } 
    else if (key == 'c') {
        clear_screen();
    }

    // tool selection
    else if (key == 'a') {
        alternator = 1;
        println("corner");
    }
    else if (key == 's') {
        alternator = 2;
        println("wave");
    }
    else if (key == 'd') {
        alternator = 3;
        println("dot");
    }

    // pdf functions
    if (key == 'r') {
        if (recording) {
            endRecord();
            println("Recording stopped.");
            recording = false;
        } 
        else {
            beginRecord(pdf);
            println("Recording started.");
            recording = true;
        }
    }
    else if (key == 'q') {
        if (recording) {
            endRecord();
        }
        exit();
    }
}

void mousePressed() {
    ++run_wave;
    if (run_wave >= 2) {
        run_wave = 0;
    }

    ppX = pX;
    ppY = pY;

    pX = cX;
    pY = cY;

    cX = mouseX;
    cY = mouseY;
}