public class Wheel {
    // Member Data
    float diameter;
    float angle;
    float speed;
    float x;
    float y;
    color line_color = #000000;

    // Constructors
    public Wheel () {
        diameter = 200;
        angle = 0;
        speed = 0.05;
        x = 300;
        y = 200;
    }

    public Wheel (float diain, float speedin) {
        diameter = diain;
        angle = 0;
        speed = speedin;
    }

    // Member Funcs
    public void updateWheel() {
        angle = angle + speed;
    }

    public void displayWheel(float xin, float yin) {
        x = xin;
        y = yin;
        stroke(0);  
        strokeWeight(2);
        fill(255, 255, 255, 1);
        ellipse(x, y, diameter, diameter);
        float linex = x + cos(angle) * (diameter/2 - 3);
        float liney = y + sin(angle) * (diameter/2 - 3);
        stroke(line_color);
        strokeWeight(6);
        blendMode(MULTIPLY);
        line(x, y, linex, liney);
        blendMode(BLEND);
    } 

    public void displayWheel() { 
        strokeWeight(2);
        fill(255, 255, 255, 2);
        ellipse(x, y, diameter, diameter);
        float linex = x + cos(angle) * (diameter/2 - 3);
        float liney = y + sin(angle) * (diameter/2 - 3);
        stroke(line_color);
        strokeWeight(6);
        blendMode(MULTIPLY);
        line(x, y, linex, liney);
        blendMode(BLEND);
    } 

    public void setColor(color cin) {
        line_color = cin;
    }
}
