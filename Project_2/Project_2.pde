void setup() {
  // noLoop();
  size(1000, 700);
  colorMode(HSB, 360, 100, 100, 100);
  ellipseMode(CENTER);
  
}



void draw() {
  float spiciness = 84;
  
  PFont inconsolata;
  inconsolata = loadFont("Inconsolata-Regular-48.vlw");
  String question = "How spicy do you want that?";
  spiciness = constrain(spiciness, -100, 100);
  float spiciness_scaled = spiciness / 100;
  background(#FFFFFF);
  noStroke();
  color protein_color = color((40 - (40 * spiciness_scaled)), (100), (70 - (spiciness_scaled * 20)));
  color base_color = color((30 - (30 * spiciness_scaled)), (51 + (49 * spiciness_scaled)), (85 - (spiciness_scaled * 15)));
  color veggie_color = color((70), (80 + (20 * spiciness_scaled)), (60 - (spiciness_scaled * 40)));
  color sprout_color = color((60 - (20 * spiciness_scaled)), (45 + (20 * spiciness_scaled)), (100));
  color oil_color = color((48 - (8 * spiciness_scaled)), (100), (100));

  // items
  // base
  background(base_color);

  // beansprouts
  fill(sprout_color);
  beansprout(91, 60, 548, 163);
  beansprout(111, 78, 557, 143);

  beansprout(53, 658, 482, 395);
  beansprout(37, 719, 460, 381);

  beansprout(-256, 600, 305, 297);
  beansprout(-208, 502, 286, 341);

  beansprout(493, 294, 994, 184);
  beansprout(458, 316, 1034, 222);

  beansprout(666, 97, 1009, -86);
  beansprout(624, 75, 1068, -47);

  beansprout(497, 521, 973, 663);
  beansprout(520, 502, 1014, 723);

  // protein
  fill(protein_color);
  protein(169, 308, 50, spiciness_scaled, 7);
  protein(265, 101, 46, spiciness_scaled, 9);
  protein(480, 200, 59, spiciness_scaled, 12);
  protein(35, 112, 57, spiciness_scaled, 11);
  protein(404, 389, 35, spiciness_scaled, 9);
  protein(251, 533, 67, spiciness_scaled, 11);
  protein(500, 650, 50, spiciness_scaled, 7);
  protein(30, 653, 50, spiciness_scaled, 9);
  protein(587, 465, 50, spiciness_scaled, 5);
  protein(732, 269, 56, spiciness_scaled, 8);
  protein(776, 602, 50, spiciness_scaled, 10);
  protein(629, 27, 35, spiciness_scaled, 7);
  protein(927, 84, 60, spiciness_scaled, 11);
  protein(901, 422, 50, spiciness_scaled, 8);
  protein(977, 685, 42, spiciness_scaled, 15);

  // veggies
  fill(veggie_color);
  veggie(162, 64, 40, 23);
  veggie(288, 230, 34, 30);
  veggie(385, 93, 28, 32);
  veggie(526, 60, 40, 23);
  veggie(636, 187, 48, 23);
  veggie(759, 88, 28, 35);
  veggie(66, 244, 49, 27);
  veggie(286, 380, 50, 18);
  veggie(131, 421, 26, 11);
  veggie(930, 269, 57, 19);
  veggie(1005, 513, 40, 27);
  veggie(619, 352, 20, 80);
  veggie(418, 546, 54, 23);
  veggie(744, 444, 53, 31);
  veggie(899, 597, 16, 23);
  veggie(628, 609, 28, 24);
  veggie(-1, 495, 59, 47);
  veggie(293, 692, 41, 23);

  
  // oil
  fill(0, 0, 0, 0);
  stroke(oil_color);
  oil_bubble(363, 210, -10, -9, 40);
  oil_bubble(635, 129, -7, -20, 40);
  oil_bubble(233, 421, -6, -14, 40);
  oil_bubble(371, 640, -17, 4, 40);
  oil_bubble(667, 341, 5, -7, 40);
  oil_bubble(899, 556, -10, -5, 40);
  oil_bubble(155, 226, 101, -8, 40);

  fill(#000000);
  textSize(20);
  textFont(inconsolata, 48);
  text("how spicy do you want that?", 90, 620);
}

// function defs
void protein(float x, float y, float radius, float this_spiciness, int vertices) {

  if (vertices <= 1) {
    vertices = 7;
  }

  if (this_spiciness < 0) {
    this_spiciness = 1 * this_spiciness;
  }

  float var_dist = radius + (this_spiciness * (radius*0.5));
  float angle = TAU / vertices;
  int index = 0;
  float[] points;
  points = new float[1];
  points = new float[0];




  for (int i = 1; i <= vertices; ++i) {
    float current_angle = angle*i;

    float c = var_dist * cos(current_angle + angle / 2);
    float d = var_dist * sin(current_angle + angle / 2); 
    float final_x_var = x + c;
    float final_y_var = y + d;
    points = append(points, final_x_var);
    points = append(points, final_y_var);


    float a = radius * cos(current_angle + angle);
    float b = radius * sin(current_angle + angle); 
    float final_x = (x + a);
    float final_y = (y + b);
    points = append(points, final_x);
    points = append(points, final_y);
  }

  beginShape();
  for (int i = 0; i<vertices; ++i) {
    index = i*4;
    // circle(points[index+0], points[index+1], 20);
    curveVertex(points[index+0], points[index+1]);
    curveVertex(points[index+0], points[index+1]);
    vertex(points[index+0], points[index+1]);
    curveVertex(points[index+0], points[index+1]);
    curveVertex(points[index+0], points[index+1]);
    curveVertex(points[index+2], points[index+3]);
    // circle(points[index+2], points[index+3], 20);
  }

  curveVertex(points[0], points[1]);
  curveVertex(points[0], points[1]);
  vertex(points[0], points[1]);
  curveVertex(points[0], points[1]);
  curveVertex(points[0], points[1]);
  curveVertex(points[2], points[3]);
  endShape(CLOSE);
}

void veggie(float x, float y, float width, float angle) {
  float[] veg_points;
  veg_points = new float[1];
  veg_points = new float[0];

  for (int i = 0; i < 4; ++i) {

    angle = angle + (HALF_PI * i);
    float rad = width / 2;
    float c = rad * cos(angle);
    float d = rad * sin(angle); 
    float final_x = x + c;
    float final_y = y + d;
    veg_points = append(veg_points, final_x);
    veg_points = append(veg_points, final_y);
  }

  beginShape();
  vertex(veg_points[0], veg_points[1]);
  vertex(veg_points[4], veg_points[5]);
  vertex(veg_points[6], veg_points[7]);
  vertex(veg_points[2], veg_points[3]);
  endShape();
}

void beansprout(float x1, float y1, float x2, float y2) {
  noStroke();
  float length = sqrt(sq(x2 - x1) + sq(y2 - y1));
  float x_incr = (x2 - x1) / length;
  float y_incr = (y2 - y1) / length;
  float x_indx = 0;
  float y_indx = 0;
  float width = 0;

  for (int i = 0; i < length; ++i) {
    x_indx = x_indx + x_incr;
    y_indx = y_indx + y_incr;
    if (x_indx < (0.20 * (x2 - x1))) {
      width = width + 0.1;
    } else if (x_indx > x2-x1 - (0.20 * (x2 - x1))) {
      width = width - 0.1;
    }
    circle(x1 + x_indx, y1 + y_indx, width);
  }
}

void oil_bubble(float x, float y, float a, float b, float extent) {
  ellipseMode(CENTER);
  ellipse(x, y, extent, extent);
  ellipse(x + extent * (1 + a / 10), y + extent * (1 + b / 10), extent * 0.6, extent * 0.6);
  ellipse(x + extent * (0 + b / 10), y + extent * (0 + a / 10), extent * 0.2, extent * 0.2);
  
}
