public class Paper {
    // background
    PShape bak = loadShape("paper.svg");

    // coords
    float x1 = 100;
    float y1 = 100;
    float x2 = width - 200;
    float y2 = height - 200;

    // desc
    String description;

    // Constructors
    public Paper() {
        description = "the paper";
    }

    // Member Funcs
    public void render_paper() {
        render_transparency();
        shape(bak, x1, y1, x2, y2);
        // for (int i = 0; i < collage_iterator; ++i) {
        //     ChosenItems[i].final_render();
        // }
    }

    public void render_transparency() {
        fill(0, 255, 0, 50);
        rect(0, 0, width, height);
    }

    public void item_brush(Item brushtip) {
        // x
        // y
        
        item_inv.get(1).render_item(mouseX, mouseY);
    }

    public void item_chooser(int index) {
        ChosenItems.add(item_inv.get(index));
        println("added" + index);
    }

}
