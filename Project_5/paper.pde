public class Paper {
    // background
    PShape img;
    img = loadshape("paper/paper.svg");

    // coords
    float x1 = width * 0.15;
    float y1 = width * 0.15;
    float x2 = width - width * 0.15;
    float y2 = width - width * 0.15;

    // desc
    String description;

    public Paper () {
        description = "the paper"
    }

    public void render_paper () {

    }

}
