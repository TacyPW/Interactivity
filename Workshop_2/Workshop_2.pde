void setup() {
  size(600, 400);
  colorMode(HSB, 360, 1.0, 1.0, 1.0);
  //noLoop();
}

// functions
void test(String oop) {
  println(oop);
}


void circle_line(float x, float y, float dia, float spacing, int number, char direction) {
  for (int i = 0; i < number; i++) {
    circle(x, y, dia);
    if (direction == 'x') {
      x += spacing;
    } else if (direction == 'y') {
      y += spacing;
    } else {
      println("you gotta input x or y for direction");
    }
  }
}

void line_line(float x, float y, float len, float spacing, int number, char direction) {
  for (int i = 0; i < number; i++) {
    if (direction == 'x') {
      line(x, y, x, y+len);
      x += spacing;
    } else if (direction == 'y') {
      line(x, y, x+len, y);
      y += spacing;
    } else {
      println("you gotta input 'x' or 'y' for direction");
    }
  }
}

// initializing variables
  int counter = 1;
    int operator = 1;


void draw() {
  background(#FFFFFF);
  stroke(#00FF00);
  stroke(#00FF00);
  strokeWeight(0.5);

  // grids
  for (int i = 1; i <= 5; i++) {
    line(i *100, 0, i * 100, 400);
  }
  for (int i = 1; i <= 3; i++) {
    line(0, i * 100, 600, i * 100);
  }

  // variables
  color red = #FF0000;
  color green = #00FF00;
  color blue = #0000FF;
  float size = 80.0;
  float difference_factor = 0.5;
  float foo = 10.0;
  float bar = 10.0;



  // blue circles
  fill(blue);
  strokeWeight(0);
  circle_line(100.0, 100.0, size, 100.0, 3, 'x');

  // green circles
  fill(green);
  circle_line(300.0, 200.0, size*difference_factor, 65, 2, 'y');

  test("helloooooo");


  // red lines
  stroke(red);
  strokeWeight(5);
  strokeCap(ROUND);
  counter = counter + operator;  
  if (counter >= 30 || counter <= 0) {
      operator = operator*-1;
  }
  else {
   line_line(400.0, 200.0, 100, 10, counter, 'y');
  }

}
