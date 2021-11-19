// Initialization
    // Item[] Items;
    Paper Sheet;
    Room Hoop;
    Item Test;
    ArrayList<Item> item_inv = new ArrayList<Item>(0);
    ArrayList<Room> room_s = new ArrayList<Room>(0);
    ArrayList<Item> chosen_items = new ArrayList<Item>(0);

    // Room[] RoomsS;

    // Table ChosenItems;

// State Tracking
    int room_iterator = 0;
    int stage_iterator = 0;
    int collage_iterator = 0;

    int item_1 = collage_iterator * 3 - 1;
    int item_2 = collage_iterator * 3 - 2;
    int item_3 = collage_iterator * 3 - 3;


// Units
    float vw;
    float vh;
 

//DELETE
    String tag = "coin";
    float x = 0.0;
    float y = 0.0;
    String file = "coin.png";
//DELETE



// Boilerplate
void setup() {
    // Basic Setup
    fullScreen();
    background(#FFFFFF);
    pixelDensity(2);
    vw = width / 100;
    vh = height / 100;

    // // Final Table Init
    // ChosenItems = new Table();

    // ChosenItems.addColumn("tag");
    // ChosenItems.addColumn("file");
    // ChosenItems.addColumn("x");
    // ChosenItems.addColumn("y");

    // Object Init
    Sheet = new Paper();
    Hoop = new Room(1, "1.svg");
    Test = new Item("crow", 100, 200, "crow.png");

    // Room 1
    item_inv.add(new Item("stamp", 80 * vw, 20 * vh, "stamp.png"));
    item_inv.add(new Item("crow", 20 * vw, 20 * vh, "crow.png"));
    item_inv.add(new Item("flower", 70 * vw, 80 * vh, "flower.png"));

    // Room 2
    item_inv.add(new Item("fingerpick", 25 * vw, 30 * vh, "fingerpick.png"));
    item_inv.add(new Item("key", 20 * vw, 70 * vh, "key.png"));
    item_inv.add(new Item("die", 70 * vw, 60 * vh, "die.png"));

    // Room 3
    item_inv.add(new Item("kitty", 15 * vw, 35 * vh, "kitty.png"));
    item_inv.add(new Item("glove", 40 * vw, 20 * vh, "glove.png"));
    item_inv.add(new Item("cleaner", 75 * vw, 70 * vh, "cleaner.png"));

    // Room 4
    item_inv.add(new Item("clover", 10 * vw, vh * 60, "clover.png"));
    item_inv.add(new Item("gascan", 75 * vw, 30 * vh, "gascan.png"));
    item_inv.add(new Item("coin", 55 * vw, 15 * vh, "coin.png"));

    // Room 5
    item_inv.add(new Item("cheese", 55 * vw, 40 * vh, "cheese.png"));
    item_inv.add(new Item("man", 30 * vw, 5 * vh, "man.png"));
    item_inv.add(new Item("telephone", 55 * vw, 75 * vh, "telephone.png"));

    // Room 6
    item_inv.add(new Item("dagger", 45 * vw, 20 * vh, "dagger.png"));
    item_inv.add(new Item("lips", 25 * vw, 45 * vh, "lips.png"));
    item_inv.add(new Item("breadtag", 50 * vw, 60 * vh, "breadtag.png"));

    // Room 7
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));

    // Room 8
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));

    // Room 9
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
    // item_inv.add(new Item("tag", x * vw, y * vh, "file"));
}

void draw() {
    //Rooms[room_iterator].room_driver();
    background(#FFFFFF);

    // Test Objects
     Hoop.render_back();

    

    // Test.render_item();

     item_inv.get(1).render_item(mouseX, mouseY);

     for (int i = 0; i < item_inv.size(); ++i) {
         item_inv.get(i).render_item();
     }
    
    Sheet.render_paper();
    Sheet.item_brush(item_inv.get(2));

    if ((collage_iterator > 9) || (collage_iterator < 0)) {
        collage_iterator = 0;
    }
}

// Global Functions
boolean overRect(float x, float y, float w, float h) {
  // If the (x,y) are inside the rect, return 'true'
  if (mouseX > x && mouseX < x+w &&
      mouseY > y && mouseY < y+h) {
    return true;
  } 
  else {
    return false; 
  }
}

// public <T> void clear_array(T[] array) {
//     for (int i = 0; i < array.length; ++i) {
//         array[i] = null;
//     }
// }

void mousePressed() {
    // if (s"tag"e_iterator == 0) {
    //     if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
    //         Sheet.ChosenItems[collage_iterator] = Items[item_1];
    //         s"tag"e_iterator++;
    //     }
    //     if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
    //         Sheet.ChosenItems[collage_iterator] = Items[item_1];
    //         s"tag"e_iterator++;
    //     }
    //     if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
    //         Sheet.ChosenItems[collage_iterator] = Items[item_1];
    //         s"tag"e_iterator++;
    //     }
    // }
    // if (s"tag"e_iterator == 0) {
    //     if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
    //         Sheet.ChosenItems[collage_iterator] = Items[item_1];
    //         s"tag"e_iterator++;
    //     }
    // }
}