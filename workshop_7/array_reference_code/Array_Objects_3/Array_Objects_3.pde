int numLines = 5000;
MovingLine[] lines = new MovingLine[numLines];

int currentLine = 0;

void setup() {
  fullScreen(P2D);
  for (int i = 0; i < numLines; i++) {
    lines[i] = new MovingLine();
  }
}

void draw() {
  background(204);
  for (int i = 0; i < currentLine; i++) {
    lines[i].display();
  }
}

void mouseDragged() {
  lines[currentLine].setPosition(mouseX, mouseY, pmouseX, pmouseY);
  if (currentLine < numLines - 1) {
    currentLine++;
  }
}
