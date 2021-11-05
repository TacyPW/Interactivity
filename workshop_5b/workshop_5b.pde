// Workshop 5 + Exercise 5 Code Template

int screen = 1;

int b1x = 200;  // Button 1 x-coordinate
int b1y = 300;  // Button 1 y-coordinate

int b2x = 400;  // Button 2 x-coordinate
int b2y = 300;  // Button 2 y-coordinate

int hx = 300;  // "Home" button x-coordinate
int hy = 500;  // "Home" button y-coordinate

int bdiameter = 100;  // Button diameter
int hdiameter = 30;  // "Home" button diameter



float incr = 0.0;

void setup() {
  size(600, 600);
}

void draw() {
  background(204);
  if (screen == 1) {
    drawScreen1();
  } else if (screen == 2) {
    drawScreen2();
  } else if (screen == 3) {
    drawScreen3();
  }
}

void drawScreen1() {
  noStroke();
  
  // Yellow (left) rollover circle
  if (overCircle(b1x, b1y, bdiameter) == true) {
    fill(255, 204, 0);  // Yellow
  } else {
    fill(0);
  }
  circle(b1x, b1y, bdiameter);
  
  // Orange (right) rollover circle
  if (overCircle(b2x, b2y, bdiameter) == true) {
    fill(255, 102, 0);  // Orange
  } else {
    fill(0);
  }
  circle(b2x, b2y, bdiameter);
  fill(255);
  text("Screen 1", 20, 30);
}

void drawScreen2() {
  background(255, 204, 0);  // Yellow
  fill(255);
  circle(hx, hy, hdiameter);
  text("Screen 2", 20, 30);
}

void drawScreen3() {
  background(255, 102, 0);  // Orange
  fill(255);
  circle(hx, hy, hdiameter);
  text("Screen 3", 20, 30);
}

void drawScreen4() {
    background(#00FF00);  // green
  fill(255);
  circle(hx, hy, hdiameter);
  text("Screen 3", 20, 30);
}

// Check for "clicks" to go to a new screen
void mousePressed() {
  if (screen == 1) {
    // This is the key to "nonlinearity," having more
    // than one choice on a screen. Here, one button will
    // jump to "screen 2" and one to "screen 3"
    if (overCircle(b1x, b1y, bdiameter) == true) {
      screen = 2;
      println("go to screen 2");
    }
    if (overCircle(b2x, b2y, bdiameter) == true) {
      screen = 3;
      println("go to screen 3");
    }
  } else if (screen == 2) {
    if (overCircle(hx, hy, hdiameter) == true) {
      screen = 1;
      println("back to screen 1");
    }
  } else if (screen == 3) {
    if (overCircle(hx, hy, hdiameter) == true) {
      screen = 1;
      println("back to screen 1");
    }
  }

}

void mouseDragged() {
    if(screen == 1);
}

boolean overCircle(float x, float y, float d) {
  // If the (x,y) are inside the circle, return 'true'
  if (dist(mouseX, mouseY, x, y) < d/2) {
    return true;
  } else {
    return false;
  }
}
