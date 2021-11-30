public class Message {
    String content;
    int length;
    int wlen = 0;
    String workingc = " ";
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
        push();
            stroke(0);
            strokeWeight(width / 1600);
            fill(255, 200);
            rect(x, y, w, h);
        pop();
        push();
            textFont(inconsolata, size);
            textSize(size);
            fill(0);
            text(workingc, x, y, w, h);
        pop();
        if (workingc.length() < content.length()) {
            this.update();
        }
    }

    void update() {
        wlen++;
        workingc = workingc + str(content.charAt(wlen));
    }

}
