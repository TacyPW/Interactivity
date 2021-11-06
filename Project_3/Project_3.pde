
int brush = 0;
String title = "Cadavre Exquis";
boolean mouse_click = true;
float index = 0;

void setup() {
  size(800, 900);
}

void draw() {
  writeScreen();
}

void writeScreen() {
  background(#C3A268);
  noStroke();

    float start_x = 150;
    float start_y = 150;
    float both_height = 175;
    float gap = 10;
    float middle = 400;
    float side = 40;

  rect(start_x + gap + side, start_y, middle, both_height);
  rect(start_x, start_y, side, both_height);
  rect(start_x + 2 * gap + side + middle, start_y, side, both_height);

  rect(start_x + gap + side, start_y + gap + both_height, middle, both_height);
  rect(start_x, start_y + gap + both_height, side, both_height);
  rect(start_x + 2 * gap + side + middle, start_y + gap + both_height, side, both_height);

//   rect(200, 335, 400, both_height);
//   rect(150, 335, 40, both_height);
//   rect(610, 335, 40, both_height);

  rect(start_x + gap + side, start_y + 2 * gap + 2 * both_height, middle, both_height);
  rect(start_x, start_y + 2 * gap + 2 * both_height, side, both_height);
  rect(start_x + 2 * gap + side + middle, start_y + 2 * gap + 2 * both_height, side, both_height);

//   rect(200, 520, 400, both_height);
//   rect(150, 520, 40, both_height);
//   rect(610, 520, 40, both_height);

  circle(200, 705, 50);
  circle(300, 705, 50);
  circle(400, 705, 50);
  circle(500, 705, 50);
}

void line_brush(float x, float y, float width) {
}

void hair_brush(float x, float y, float width) {
}

void dot_brush(float x, float y, float width) {
}

void keyPressed() {

  if (key == 'h') {
    brush = 3;
  } 
  else if (key == 'l') {
    brush = 1;
  } 
  else if (key == 'd') {
    brush = 2;
  } 
  else if (key == '1') {
      index = 1;
      draw_section(index);
  }
  else if (key == RETURN) {
      save();
  }
  else {
    println(keyCode + " isn't assigned");
  }

}

void grid(float x1, float y1, float x2, float y2, int div_x, int div_y) {
    fill(#FFFFFF);
    noStroke();
    rect(x1, y1, x2 - x1, y2 - y1);

    float x_increment = x2 - x1 / div_x;
    float y_increment = y2 - y1 / div_y;
    
    for (int i = 0; i < div_x; ++i) {
        line(x1 + (i * x_increment), y1, x2 + (i * x_increment), y2);
    }
    for (int i = 0; i < div_x; ++i) {
        line(x1, y1 + (i * x_increment), x2, y2 + (i * x_increment));
    }
}

void draw_section(int index) {
    if index = 1
}

void save() {

    writeScreen();
}