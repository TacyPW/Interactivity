// Initialization
Item[] Items;
Paper Sheet;
Room[] rooms;

// State Tracking
int room_iterator = 0;
int stage_iterator = 0;
int collage_iterator = 0; 

int item_1 = collage_iterator * 3;
int item_2 = collage_iterator * 3 - 1;
int item_3 = collage_iterator * 3 - 2;

// Units
float vw = width / 100;
float vh = height / 100;



// Boilerplate
void setup() {
    // Basic Setup
    fullScreen();
    background(#FFFFFF);
    pixelDensity(2);

    // Object Init
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

// Global Functiona
boolean overRect(float x, float y, float w, float h) {
  // If the (x,y) are inside the rect, return 'true'
  if (mouseX > x && mouseX < x+w &&
      mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false; 
  }
}

// public <T> void clear_array(T[] array) {
//     for (int i = 0; i < array.length; ++i) {
//         array[i] = null;
//     }
// }

void mousePressed() {
    if (stage_iterator == 0) {
        if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
            Sheet.ChosenItems.add(Items[item_1]);
            stage_iterator++;
        }
    }
}