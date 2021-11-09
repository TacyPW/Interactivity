// Initialization
Item[] Items;
Paper Sheet;
Room[] rooms;
Item[] chosen_items = new Item[10];

// State Tracking
int room_iterator = 0;
int stage_iterator = 0;
int collage_iterator = 0; 

// Units
float vw = width / 100;
float vh = height / 100;


void setup() {
    fullScreen();
    background(#FFFFFF);

    Sheet = new Paper();

    Item[] Items = {
        // room 4
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 8
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 9A
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 9B
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 10A
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 10B
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 10C
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 10D
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 11A
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,

        // room 11B
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
        new Item(tag, x, y) ,
    };


    Room[] rooms = {
        new Room(1) 
        // new Room(2) ,
        // new Room(3) ,
        // new Room(4) ,
        // new Room(5) ,
        // new Room(6) ,
        // new Room(7) ,
        // new Room(8) ,
        // new Room(9) ,
        // new Room(10) ,
        // new Room(11) ,
        // new Room(12) ,
        // new Room(13) ,
        // new Room(14) ,
        // new Room(15) ,
        // new Room(16) ,
        // new Room(17) ,
        // new Room(18) 
    };

}

void draw() {
    
}

// public <T> void clear_array(T[] array) {
//     for (int i = 0; i < array.length; ++i) {
//         array[i] = null;
//     }
// }

void mousePressed() {
    
}