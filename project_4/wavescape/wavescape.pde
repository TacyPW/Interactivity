void setup() {
    size(512, 512);
    background(#ffffff);
}

void draw() {
    stroke(#FF0000);
    wavescape(10,10,100,100);
}


void wavescape(float x1, float y1, float x2, float y2) {
    strokeWeight(1);
    stroke(#FF0000);
    for (int i = 0; i < y2 - y1; i += 20) {
        for (int j = 0; j < x2 - x1; j += 5) {
            beginShape();
                curveVertex(x1 + j, y1 + i + random(-10, 10));
                println( j);
            endShape();
        }
    }
}