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
        int item_1 = collage_iterator * 3;
        int item_2 = collage_iterator * 3 - 1;
        int item_3 = collage_iterator * 3 - 2;

        blendMode(MULTIPLY);
        Items[item_1].render_item();
        Items[item_2].render_item();
        Items[item_3].render_item();
        blendMode(BLEND);
    }

    void room_driver() {
        if (stage_iterator == 0) {
            render_back();
            render_items();
            stage_iterator++;
        }
        else if (stage_iterator == 1) {
            render_back();
            Sheet.render_transparency();
            Sheet.render_paper();

            stage_iterator++;
        }
        else if (stage_iterator == 2) {
            
            stage_iterator = 0;
        }

    }
}

