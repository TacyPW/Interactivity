
class item {
    int tag;
    String description;
    PImage item_img;

    item(String tg, float x, float y)) {
        description = concat("this is the\ " + str(tg));
        
        tag = tg;

        file = concat(str(tg) + ".svg")
        back_img = loadshape(file);
    }
    
    void render_back() {
        background(#FFFFFF);
        shape(back_img, 0, 0, width, height);
    }
}


item[] items = {
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,

    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,

    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,
    
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); ,
    new item(tag, x, y, ); 
}
