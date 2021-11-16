void setup() {
   size(600, 400);
   colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
   background(360);
   stroke(200);
   strokeWeight(0.5);
   for (int i = 1; i <= 5; i++) {
     line(i*100,0,i*100,400); 
   }
  for (int i = 1; i <= 3; i++) {
     line(0,i*100,600,i*100); 
   }
   stroke(0,0,0);
   strokeCap(SQUARE);
   fill(48,100,100);
   noStroke();
   ellipse(500,200,120,120);
   stroke(0);
   strokeWeight(5);
   line(400,300,500,200);
   noStroke();
   fill(175);
   ellipse(200,100,120,120);
   stroke(0);
   strokeWeight(1);
   line(200,100,400,300);
   line(0,0,400,400);
   fill(48,100,100);
   noStroke();
   ellipse(100,100,120,120);
}
