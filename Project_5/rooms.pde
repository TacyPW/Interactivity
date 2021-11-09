class Room {
    int index;
    String description;
    PShape back_img;

    Room(int idx) {
        // description = "this is room number" + str(idx);
        
        index = idx;

        String file = str(idx) + ".svg";
        println(file);
        back_img = loadShape(str(idx) + ".svg");
    }
    
    void render_back() {
        background(#FFFFFF);
        shape(back_img, 0, 0, width, height);
    }

    void render_items() {

        blendMode(MULTIPLY);
        Items[item_1].render_item();
        Items[item_2].render_item();
        Items[item_3].render_item();
        blendMode(BLEND);
    }

    void room_driver() {
        if (stage_iterator == 0) {
            this.render_back();
            this.render_items();

        }
        else if (stage_iterator == 1) {
            this.render_back();
            Sheet.render_transparency();
            Sheet.render_paper();

            stage_iterator++;
        }
        else if (stage_iterator == 2) {
            
            stage_iterator = 0;
        }

    }
}

