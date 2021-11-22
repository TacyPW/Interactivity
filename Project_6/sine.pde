public class Point {
    int x;
    int y;

    Point(float xin, float yin) {
        this.x = xin;
        this.y = yin;
    }
}



float sinx = 0;
float siny = height / 2;

void draw_sin(Point start, Point end) {
    
    float tx = sinx;
    float ty = siny;

    circle(tx, ty, 2);

    sinx++;
    siny = siny + 5* sin(sinx);
}