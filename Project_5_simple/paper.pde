public class Paper {
    // background
    PShape bak = loadShape("paper.svg");
    ArrayList<Item> ChosenItems = new ArrayList<Item>(0);

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
        for (int i = 0; i < this.ChosenItems.size(); i++) {
            if (this.ChosenItems.get(i).final_set) {
                println(this.ChosenItems.get(i).tag + frameCount);
                this.ChosenItems.get(i).final_render();
            }
        }   
        
        // for (int i = 0; i < collage_iterator; ++i) {
        //     this.ChosenItems[i].final_render();
        // }
    }

    void render_paper(boolean half) {
        if (half) {
            if (displayDensity() == 2) {
                push();
                    scale(0.5, 0.5);
                    render_transparency();
                    shape(bak, width / 20, width / 20, width - (width / 10), height - (width / 10));
                    for (Item chosen : this.ChosenItems) {
                        if (chosen.final_set) {
                            println(chosen.tag, "final");
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
        this.ChosenItems.add(new Item(item_inv.get(index).tag, mouseX, mouseY, item_inv.get(index).filee));
        println("added" + index);
    }

}
