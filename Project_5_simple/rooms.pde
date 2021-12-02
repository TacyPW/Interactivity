

class Room {
    int index;
    String description;
    PShape back_img;
    color walls = #FFFFFF;
    color lines = #000000;
    Item i1;
    Item i2;
    Item i3;
    Item ifinal;

    Room() {}

    Room (int idx, String file) {
        index = idx;
        back_img = loadShape(file);
    }

    Room (int idx, String file, Item i1in, Item i2in, Item i3in) {
        index = idx;
        back_img = loadShape(file);
        i1 = i1in;
        i2 = i2in;
        i3 = i3in;
    }
    
    void render_back() {
        // blendMode(BLEND);
        background(#FFFFFF);
        back_img.setStroke(#000000);
        shape(this.back_img, 0, 0, width, height);
    }
    
    void render_items() {
        blendMode(MULTIPLY);
        blendMode(BLEND);
    }

    void render_items(ArrayList<Item> a) {
        blendMode(MULTIPLY);
        for (int i = 0; i < a.size(); ++i) {
            a.get(i).render_item();
        }
        blendMode(BLEND);
    }

    void room_driver() {
        if (stage_iterator <= 0) {
            this.render_back();
            this.render_items(item_inv);
        }
        else if (stage_iterator == 1) {
            this.render_back();
            Sheet.render_paper();

            if (overRect(Sheet.x1, Sheet.y1, Sheet.x2 , Sheet.y2 )) {
                Sheet.item_brush(Sheet.ChosenItems.get(chosennum - 1));
            }
            else {
                blendMode(MULTIPLY);
                image(close, mouseX - fontsize / 2, mouseY - fontsize / 2, fontsize, fontsize);
                blendMode(BLEND);
            }
            render_buttons();
        }
        else if (stage_iterator == 2) {
            this.render_back();
            this.render_items(item_inv);
        }
    } 
}
