// Initialization
    Paper Sheet;
    Room Hoop;
    Item Test;

    ArrayList<Item> item_inv = new ArrayList<Item>(0);
    ArrayList<Room> rooms = new ArrayList<Room>(0);
    ArrayList<Item> ChosenItems = new ArrayList<Item>(0);
    ArrayList<Message> Messages = new ArrayList<Message>(0);
    Tunnel conclusion;

    PImage close;
    PImage left;
    PImage right;
    PImage intro;
    
    PFont inconsolata;
    fontsize = width / 40;

    boolean hellaa = true;
    boolean bitch = true;

// State Tracking
    int room_iterator = 11;
    int stage_iterator = 0;
    int collage_iterator = 0;

    int item_1 = collage_iterator * 3 - 1;
    int item_2 = collage_iterator * 3 - 2;
    int item_3 = collage_iterator * 3 - 3;

    int tincr = 0;


// Units
    float vw;
    float vh;
//
String teckst = "hello my name is tacy prins woodlief hopefully im not too much of a flop";

// Run Once
void setup() {
    // Basic Setup
    // fullScreen();
    size(800, 500);
    background(#FFFFFF);
    pixelDensity(2);
    vw = width / 100;
    vh = height / 100;

    close = loadImage("close.png");
    left = loadImage("left.png");
    right = loadImage("right.png");
    intro = loadImage("intro.jpg");

    inconsolata = createFont("Inconsolata-Regular.ttf", 20);
    // Object Init
    Sheet = new Paper();
    //Hoop = new Room(1, "1.svg");
    Test = new Item("crow", 100, 200, "crow.png");

    Messages.add(new Message("/> Click anywhere to start..."));


    conclusion = new Tunnel(11, "10.svg", "11.svg", "12.svg");

    // ROOMS & ITEMS
        // Room 1
        item_inv.add(new Item("stamp", 80 * vw, 20 * vh, "stamp.png"));
        item_inv.add(new Item("crow", 20 * vw, 20 * vh, "crow.png"));
        item_inv.add(new Item("flower", 70 * vw, 70 * vh, "flower.png"));
        rooms.add(new Room(2, "1.svg", item_inv.get(0), item_inv.get(1), item_inv.get(2)));

        // Room 2
        item_inv.add(new Item("fingerpick", 25 * vw, 30 * vh, "fingerpick.png"));
        item_inv.add(new Item("key", 20 * vw, 70 * vh, "key.png"));
        item_inv.add(new Item("die", 70 * vw, 60 * vh, "die.png"));
        rooms.add(new Room(3, "2.svg", item_inv.get(3), item_inv.get(4), item_inv.get(5)));

        // Room 3
        item_inv.add(new Item("kitty", 15 * vw, 35 * vh, "kitty.png"));
        item_inv.add(new Item("glove", 40 * vw, 20 * vh, "glove.png"));
        item_inv.add(new Item("cleaner", 75 * vw, 70 * vh, "cleaner.png"));
        rooms.add(new Room(4, "3.svg", item_inv.get(6), item_inv.get(7), item_inv.get(8)));

        // Room 4
        item_inv.add(new Item("clover", 10 * vw, vh * 60, "clover.png"));
        item_inv.add(new Item("gascan", 75 * vw, 30 * vh, "gascan.png"));
        item_inv.add(new Item("coin", 55 * vw, 15 * vh, "coin.png"));
        rooms.add(new Room(5, "4.svg", item_inv.get(9), item_inv.get(10), item_inv.get(11)));

        // Room 5
        item_inv.add(new Item("cheese", 55 * vw, 40 * vh, "cheese.png"));
        item_inv.add(new Item("man", 30 * vw, 5 * vh, "man.png"));
        item_inv.add(new Item("telephone", 55 * vw, 75 * vh, "telephone.png"));
        rooms.add(new Room(6, "5.svg", item_inv.get(12), item_inv.get(13), item_inv.get(14)));

        // Room 6
        item_inv.add(new Item("dagger", 45 * vw, 20 * vh, "dagger.png"));
        item_inv.add(new Item("lips", 25 * vw, 45 * vh, "lips.png"));
        item_inv.add(new Item("breadtag", 50 * vw, 60 * vh, "breadtag.png"));
        rooms.add(new Room(7, "6.svg", item_inv.get(15), item_inv.get(16), item_inv.get(17)));

        // Room 7
        item_inv.add(new Item("hand", 20 * vw, 10 * vh, "hand.png"));
        item_inv.add(new Item("bottlecap", 50 * vw, 20 * vh, "bottlecap.png"));
        item_inv.add(new Item("toast", 60 * vw, 80 * vh, "toast.png"));
        rooms.add(new Room(8, "7.svg", item_inv.get(18), item_inv.get(19), item_inv.get(20)));

        // Room 8
        item_inv.add(new Item("propeller", 40 * vw, 70 * vh, "propeller.png"));
        item_inv.add(new Item("cat", 20 * vw, 30 * vh, "cat.png"));
        item_inv.add(new Item("chain", 80 * vw, 40 * vh, "chain.png"));
        rooms.add(new Room(9, "8.svg", item_inv.get(21), item_inv.get(22), item_inv.get(23)));

        // Room 9
        item_inv.add(new Item("eye", 40 * vw, 15 * vh, "eye.png"));
        item_inv.add(new Item("pick", 40 * vw, 76 * vh, "pick.png"));
        item_inv.add(new Item("bird", 80 * vw, 30 * vh, "bird.png"));
        rooms.add(new Room(10, "9.svg", item_inv.get(24), item_inv.get(25), item_inv.get(26)));
    //

    ChosenItems.add(item_inv.get(0));
    ChosenItems.add(item_inv.get(1));
    ChosenItems.add(item_inv.get(2));
    ChosenItems.add(item_inv.get(3));
    ChosenItems.add(item_inv.get(4));

    
}

// Each Frame
void draw() {
    //Rooms[room_iterator].room_driver();

    // RunText(teckst, 10*vw, 80*vw, width - 10*vw, height - 10*vw, Incrementor hell = new Incrementor() );

    //conclusion.render_back();

    
    conclusion.tunnel_driver();

    if (bitch) {
        println(conclusion.observation);
        println(conclusion.fortune);
        bitch = false;
    }
    

    /*
    if (room_iterator < 1) {
        // run intro screen
        if (hellaa) {
            image(intro, 0, 0, width, height);
            hellaa = false;
        }
        Messages.get(0).print(7 * vw, 90 * vh, fontsize);
        
        //
    }
    else if (room_iterator >= 1 && room_iterator < 10) {
        background(#FFFFFF);
        rooms.get(room_iterator - 1).room_driver();
    }
    else {
        // run tunnel function
    }
    */


    // // Test Objects
    //  Hoop.render_back();
    // // Test.render_item();
    // item_inv.get(1).render_item(mouseX, mouseY);
    // for (int i = 0; i < item_inv.size(); ++i) {
    //     item_inv.get(i).render_item();
    // }
    // Sheet.render_paper();
    // Sheet.item_brush(item_inv.get(2));

    // if ((collage_iterator > 9) || (collage_iterator < 0)) {
    //     collage_iterator = 0;
    // }
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

// Event Functions
void mousePressed() {
    if (room_iterator < 1) { // startscreen
        room_iterator++;
    }
    else if (room_iterator >= 1 && room_iterator <= 10) { // body
        if (stage_iterator == 0) {
            if(overRect(rooms.get(room_iterator - 1).i1.pos_x, rooms.get(room_iterator - 1).i1.pos_y, rooms.get(room_iterator - 1).i1.it_width, rooms.get(room_iterator - 1).i1.it_height)) {
                ChosenItems.add(rooms.get(room_iterator - 1).i1);
                stage_iterator++;
            }
            if(overRect(rooms.get(room_iterator - 1).i2.pos_x, rooms.get(room_iterator - 1).i2.pos_y, rooms.get(room_iterator - 1).i2.it_width, rooms.get(room_iterator - 1).i2.it_height)) {
                ChosenItems.add(rooms.get(room_iterator - 1).i2);
                stage_iterator++;
            }
            if(overRect(rooms.get(room_iterator - 1).i3.pos_x, rooms.get(room_iterator - 1).i3.pos_y, rooms.get(room_iterator - 1).i3.it_width, rooms.get(room_iterator - 1).i3.it_height)) {
                ChosenItems.add(rooms.get(room_iterator - 1).i3);
                stage_iterator++;
            }
        }
        else if (stage_iterator == 1) {
            if (overRect(Sheet.x1, Sheet.y1, Sheet.x2 - Sheet.x1, Sheet.y2 - Sheet.y1)) {
                ChosenItems.get(room_iterator - 1).set_final(mouseX, mouseY);
                stage_iterator++;
            }
            else {
                ChosenItems.remove(room_iterator - 1);
                --stage_iterator;
            }
        }
        else if (stage_iterator == 2) {
            stage_iterator++;
        }
        else if (stage_iterator == 3) {
            if (overRect(0, 0, width / 2, height)) {
                room_iterator++;
                stage_iterator = 0;
            }
            else if (overRect(width / 2, 0, width / 2, height)) {
                room_iterator++;
                stage_iterator = 0;
            }
        }
    }
    else { // Base Case = endscreen
        if (conclusion.zoom < 2) {
            conclusion.zoom++;
            conclusion.update();
        }
        else {
            if (conclusion.stage == 0) {
                conclusion.stage++;
            }
            else if (conclusion.stage == 1) {
                conclusion.stage++;
            }
            else if (conclusion.stage == 2) {
                conclusion.stage++;
            }
        }
        
        // if (conclusion.stage == 0) {
        //     conclusion.stage++;
        // }
    }


    // if (stage_iterator == 0) {
    //     if(overRect(Items[item_1].pos_x, Items[item_1].pos_y, Items[item_1].it_width, Items[item_1].it_height)) {
    //         Sheet.ChosenItems[collage_iterator] = Items[item_1];
    //         stage_iterator++;
    //     }
    // }
}