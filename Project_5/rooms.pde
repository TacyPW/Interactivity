

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
        i1.render_item();
        i2.render_item();
        i3.render_item();
        blendMode(BLEND);
    }
    
    public void item_chooser(int index) {
        ChosenItems.add(item_inv.get(index));
        println("added" + index);
    }

    void room_driver() {
        this.render_back();
        if (stage_iterator <= 0) {
            this.render_items();


        }
        else if (stage_iterator == 1) {
            this.render_back();
            Sheet.render_transparency();
            Sheet.render_paper();
            
            Sheet.item_brush(ChosenItems.get(room_iterator));
            
        }
        /*
        else if (stage_iterator == 2) {
            
        }
        */
    } 
        
}
