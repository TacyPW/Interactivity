// Initialization
Item[] Items;
Paper Sheet;
Room[] Rooms;

// State Tracking
int room_iterator = 0;
int stage_iterator = 0;
int collage_iterator = 0;

int item_1 = collage_iterator * 3 - 1;
int item_2 = collage_iterator * 3 - 2;
int item_3 = collage_iterator * 3 - 3;

// Units
float vw = width / 100;
float vh = height / 100;

//DELETE
    String tag = "coin";
    float x = 0.0;
    float y = 0.0;
    String fiyul = "coin.png";
//DELETE


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
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 3

        // room 8
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 6

        // room 9A
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 9      

        // room 9B
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 12

        // room 10A
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 15

        // room 10B
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 18 

        // room 10C
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 21

        // room 10D
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 24

        // room 11A
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 27

        // room 11B
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) ,
        new Item(tag, x, y, fiyul) , // 30
    };


    Room[] Rooms = {
        new Room(1, "1.svg") ,
        new Room(2, "2.svg") ,
        new Room(3, "3.svg") ,
        new Room(4, "4.svg") ,
        new Room(5, "5.svg") ,
        new Room(6, "6.svg") ,
        new Room(7, "7.svg") ,
        new Room(8, "8.svg") ,
        new Room(9, "9.svg") ,
        new Room(10, "10.svg") ,
        new Room(11, "11.svg") ,
        new Room(12, "12.svg") 
    };

}

void draw() {
    //Rooms[room_iterator].room_driver();

    if ((collage_iterator > 9) || (collage_iterator < 0)) {
        collage_iterator = 0;
    }
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
            Sheet.ChosenItems[collage_iterator] = Items[item_1];
            stage_iterator++;
        }
        if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
            Sheet.ChosenItems[collage_iterator] = Items[item_1];
            stage_iterator++;
        }
        if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
            Sheet.ChosenItems[collage_iterator] = Items[item_1];
            stage_iterator++;
        }
    }
    if (stage_iterator == 0) {
        if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
            Sheet.ChosenItems[collage_iterator] = Items[item_1];
            stage_iterator++;
        }
    }
}