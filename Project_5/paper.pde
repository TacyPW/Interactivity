public class paper {
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

    public paper () {
        description = "the paper"
    }

    public void render_paper () {
        
    }

}
