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

    // Collage Items
    Item[] ChosenItems = new Item[10];

    // Constructors
    public Paper() {
        description = "the paper";
    }

    // Member Funcs
    public void render_paper() {
        render_transparency();
        shape(bak, 10 * vw, 10 * vh, 90 * vw, 90 * vh);
        for (int i = 0; i < collage_iterator; ++i) {
            ChosenItems[i].final_render();
        }
    }

    public void render_transparency() {
        fill(255, 255, 255, 50);
        rect(0, 0, width, height);
    }

    public void item_brush(Item[] brushtip) {
        brushtip[collage_iterator].render_item(mouseX, mouseY);
    }

}
