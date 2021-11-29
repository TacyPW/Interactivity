public class Bubble {
    float x;
    float y;
    float radius = 0;
    color tcolor;

    color red = #FF0000;
    color green = #00FF00;
    color blue = #0000FF;
    color cyan = #00FFFF;
    color magenta = #FF00FF;
    color yellow = #FFE800;
    color key = #000000;
    color white = #FFFFFF;

    public Bubble (float xin, float yin, float cin) {
        x = xin;
        y = yin;
        if (cin == 'w') {
            tcolor = green;
        }
        else if (cin == 'a') {
            tcolor = red;
        }
        else if (cin == 's') {
            tcolor = blue;
        }
        else {
            tcolor = yellow;
        }
    }

    public void render() {
        push();
            stroke(tcolor);
            noFill();
            circle(x, y, radius);
            radius++;
        pop();
    }
}
