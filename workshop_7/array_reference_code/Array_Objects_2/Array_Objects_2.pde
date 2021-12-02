Jitter[] bugs = new Jitter[70];  // Create array

void setup() {
  size(600, 600);
  // Create each object
  for (int i = 0; i < bugs.length; i++) {
    bugs[i] = new Jitter(random(2, 20), random(1, 5));
  }
  background(51);
}

void draw() {
  for (int i = 0; i < bugs.length; i++) {
    bugs[i].move();  // Move each object
    bugs[i].display();  // Display each object
  }
}
