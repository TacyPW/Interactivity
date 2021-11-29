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

    void update() {
        wlen++;
        workingc = workingc + str(content.charAt(wlen));
    }

}
