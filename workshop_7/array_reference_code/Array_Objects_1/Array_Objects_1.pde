Jitter[] bugs = new Jitter[2];  // Create array

void setup() {
  size(600, 600);
  // Create each object
  bugs[0] = new Jitter(30, 3.0);
  bugs[1] = new Jitter(10, 3.0);
  background(51);
}

void draw() {
  for (int i = 0; i < bugs.length; i++) {
    bugs[i].move();  // Move each object
    bugs[i].display();  // Display each object
  }
}
