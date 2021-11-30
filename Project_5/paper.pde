public class Paper {
    // background
    PShape bak = loadShape("paper.svg");

    // coords
    float x1 = 5 * vw;
    float y1 = 5 * vw;
    float x2 = width - 10 * vw;
    float y2 = height - 10 * vw;

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
        for (Item chosen : ChosenItems) {
            if (chosen.final_set) {
                chosen.final_render();
            }
        }   
        
        
        // for (int i = 0; i < collage_iterator; ++i) {
        //     ChosenItems[i].final_render();
        // }
    }

    void render_paper(boolean half) {
        if (half) {
            if (displayDensity() == 2) {
                push();
                    scale(0.5, 0.5);
                    render_transparency();
                    shape(bak, width / 20, width / 20, width - (width / 10), height - (width / 10));
                    for (Item chosen : ChosenItems) {
                        if (chosen.final_set) {
                            chosen.final_render();
                        }
                    }                                   
                pop();
            }
        }
    }

    public void render_transparency() {
        fill(255, 100);
        noStroke();
        rect(0, 0, width, height);
    }

    public void item_brush(Item brushtip) {
        brushtip.render_item(mouseX, mouseY);
    }

    public void item_chooser(int index) {
        ChosenItems.add(item_inv.get(index));
        println("added" + index);
    }

}
