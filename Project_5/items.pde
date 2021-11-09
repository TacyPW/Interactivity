// there will be 28 Items across 10 rooms

//DELETE
String tag = "coin";
float x = 0.0;
float y = 0.0;
//DELETE

public class Item {
    String tag;
    String description;
    PImage item_img;
    float pos_x;
    float pos_y;

    public Item(String tg, float x, float y) {
        description = "this is the" + tg;
        
        tag = tg;
        pos_x = x;
        pos_y = y;

        String file = tg + ".png";
        item_img = loadImage(file);
    }
    
    void render_item() {
        image(this.item_img, pos_x, pos_y, 100, 100);
    }
}

