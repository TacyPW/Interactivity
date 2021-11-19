
// there will be 28 Items across 10 rooms

 public class Item {
    String tag;
    String description;
    PImage item_img;
    float pos_x;
    float pos_y;
    float render_x = pos_x;
    float render_y = pos_y;
    float it_width = 200;
    float it_height = 200;

    public Item(String tg, float x, float y, String file) {
        tag = tg;
        pos_x = x;
        pos_y = y;
        item_img = loadImage(file);
    }
    
    void render_item() {
        blendMode(MULTIPLY);
        image(this.item_img, pos_x, pos_y, it_width, it_height);
        blendMode(BLEND);

    }

//     void render_item(float x, float y) {
//         image(this.item_img, x, y, it_width, it_height);
//     }

//     void final_render() {
//         image(this.item_img, render_x, render_y, it_width, it_height);
//     }

 }


