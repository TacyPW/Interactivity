class Room {
    int index;
    String description;
    PShape back_img;

    Room(int idx) {
        description = "this is room number" + str(idx);
        
        index = idx;

        String file = str(idx) + ".svg";
        back_img = loadShape(file);
    }
    
    void render_back() {
        background(#FFFFFF);
        shape(back_img, 0, 0, width, height);
    }
}


Room[] rooms = {
    new Room(1) ,
    new Room(2) ,
    new Room(3) ,
    new Room(4) ,
    new Room(5) ,
    new Room(6) ,
    new Room(7) ,
    new Room(8) ,
    new Room(9) ,
    new Room(10) ,
    new Room(11) ,
    new Room(12) ,
    new Room(13) ,
    new Room(14) ,
    new Room(15) ,
    new Room(16) ,
    new Room(17) ,
    new Room(18) 
};