
public class item {
    int tag;
    String description;
    PImage item_img;



    public item (String tg, float x, float y) {
        this.description = concat("this is the\ " + str(tg));
        
        this.tag = tg;

        file = concat(str(tg) + ".svg")
        this.back_img = loadshape(file);
    }
    
    void render_back() {
        b
    }
}


item[] items = {
    // room 4
    new item(tag, x, y); ,

    // room 5
    new item(tag, x, y); ,
    new item(tag, x, y); ,
    new item(tag, x, y); ,

    // room 6
    new item(tag, x, y); ,
    new item(tag, x, y); ,
    new item(tag, x, y); ,

    // room 7
    new item(tag, x, y); ,
    new item(tag, x, y); ,
    new item(tag, x, y); ,

    // room 8
    new item(tag, x, y); ,
    new item(tag, x, y); ,
    new item(tag, x, y); 
}
