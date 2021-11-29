public class Message {
    String content;
    int length;
    int wlen = 0;
    String workingc = " ";


    public Message (String contentin) {
        content = contentin;
        length = content.length();
    }

    void print(float x, float y, float size) {
        textFont(inconsolata, 20);
        textSize(size);
        text(workingc, x, y);
        if (workingc.length() < content.length()) {
            this.update();
        }
    }

    void print(float x, float y, float w, float h, float size) {
        push();
            textFont(inconsolata, 20);
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
