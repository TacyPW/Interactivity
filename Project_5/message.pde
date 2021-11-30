public class Message {
    String content;
    int length;
    int wlen = 0;
    String workingc = "";
    boolean not_rendered = true;

    public Message() {
        content = "";
    }

    public Message (String contentin) {
        content = contentin;
    }

    void print(float x, float y, float size) {
        length = content.length();
        push();
            textFont(inconsolata, size);
            textSize(size);
            fill(0);
            text(workingc, x, y);
        pop();
        if (workingc.length() < content.length()) {
            this.update();
        }
    }

    void print(float x, float y, float w, float h, float size) {
        length = content.length();
        float c = fontsize / 2;
        push();
            stroke(0);
            strokeWeight(1);
            fill(255, 200);
            rect(x, y, w, h, c,c,c,c);
        pop();
        push();
            textFont(inconsolata, size);
            textSize(size);
            fill(0);
            text(workingc, x + c, y + c, w - fontsize, h - fontsize);
        pop();
        if (workingc.length() < content.length()) {
            this.update();
        }
    }

    void print(float x, float y, float w, float h, float size, boolean center) {
        if (center) {
            push();
                textAlign(CENTER, CENTER);
                print(x, y, w, h, size);
            pop();
        }
    }

    void update() {
        workingc = workingc + str(content.charAt(wlen));
        wlen++;
    }

}
