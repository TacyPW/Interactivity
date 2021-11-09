;
public class Paper {
    // background
    PShape bak = loadShape("paper.svg");

    // coords
    float x1 = width * 0.15;
    float y1 = width * 0.15;
    float x2 = width - width * 0.15;
    float y2 = height - width * 0.15;

    // desc
    String description;

    public Paper() {
        description = "the paper";
    }

    public void render_paper() {
        shape(bak, 10 * vw, 10 * vh, 90 * vw, 90 * vh);
        for (int i = 0; i < collage_iterator; ++i) {
            chosen_items[i].render_item();
        }
    }

    public void render_transparency() {
        fill(255, 255, 255, 50);
        rect(0, 0, width, height);
    }

}
