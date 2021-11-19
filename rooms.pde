

class Room {
    int index;
    String description;
    PShape back_img;
    color walls = #FFFFFF;
    color lines = #000000;

    Room(int idx, String file) {
        index = idx;
        back_img = loadShape(file);
    }
    
    void render_back() {
        // blendMode(BLEND);
        background(#FFFFFF);
        back_img.setStroke(#000000);
        shape(this.back_img, 0, 0, width, height);
    }

    
//     void render_items() {

//         blendMode(MULTIPLY);
//         Items[item_1].render_item();
//         Items[item_2].render_item();
//         Items[item_3].render_item();
//         blendMode(BLEND);
//     }
    

//     void room_driver() {
//         if (stage_iterator <= 0) {
//             this.render_back();
//             this.render_items();
//         }
//         else if (stage_iterator == 1) {
//             this.render_back();
//             Sheet.render_transparency();
//             Sheet.render_paper();
//             Sheet.item_brush(Sheet.ChosenItems[]);
            
//         }
//         else if (stage_iterator == 2) {
            
//         }
//     }
}
