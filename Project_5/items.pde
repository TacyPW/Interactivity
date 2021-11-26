
// there will be 28 Items across 10 rooms

 public class Item {
    String tag;
    String description;
    PImage item_img;

    float pos_x;
    float pos_y;

    float render_x;
    float render_y;
    
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

    void render_item(float x, float y) {
        float itX = x - (it_width / 2);
        float itY = y - (it_height / 2);

        blendMode(MULTIPLY);
        image(this.item_img, itX, itY, it_width, it_height);
        blendMode(BLEND);
    }

    void final_render() {
        blendMode(MULTIPLY);
        image(this.item_img, render_x, render_y, it_width, it_height);
        blendMode(BLEND);
    }

    void set_final(float xin, float yin) {
        render_x = xin;
        render_y = yin;
        println("set");
    }
 }


