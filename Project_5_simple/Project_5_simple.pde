/**
This project is based around the practice of creating collages 
rom random images that you find in magazines and old books. 
it is inspired by Sean Tejarachi's "craphound" zines 
(some of the images come from these zines) which are full of
old graphic motifs and images, within a theme. Looking through the zines
almost feels like a scavanger hunt to find what is interesting or unique
In this digital reimagining of this concept, you instead get to look through a room
and choose images to add to a collage. 

have fun collaging!

-Tacy Prins Woodlief
*/
// Initialization
    Paper Sheet;

    ArrayList<Item> item_inv = new ArrayList<Item>(0);
    ArrayList<Room> rooms = new ArrayList<Room>(0);
 
    PImage close;
    PImage left;
    PImage right;
    PImage intro;
    
    PFont inconsolata;
    float fontsize;

    boolean hellaa = true;
    boolean bitch = true;

// State Tracking
    int room_iterator = 0;
    int stage_iterator = 0;
    int collage_iterator = 0;

    int item_1 = collage_iterator * 3 - 1;
    int item_2 = collage_iterator * 3 - 2;
    int item_3 = collage_iterator * 3 - 3;

    int tincr = 0;

    int chosennum = 0;

// Units
    float vw;
    float vh;
//

// Run Once
void setup() {
    // Basic Setup
    // fullScreen();
    size(756, 471);

    background(#FFFFFF);
    pixelDensity(2);

    vw = width / 100;
    vh = height / 100;

    fontsize = width / 40;

    close = loadImage("close.png");
    left = loadImage("left.png");
    right = loadImage("right.png");
    intro = loadImage("intro.jpg");

    inconsolata = createFont("Inconsolata-Regular.ttf", 20);

    // Object Init
        Sheet = new Paper();

    // ROOMS & ITEMS
        // Room 1
        rooms.add(new Room(1, "1.svg"));

        item_inv.add(new Item("stamp", "stamp.png"));
        item_inv.add(new Item("crow", "crow.png"));
        item_inv.add(new Item("flower", "flower.png"));
        item_inv.add(new Item("fingerpick", "fingerpick.png"));
        item_inv.add(new Item("key", "key.png"));
        item_inv.add(new Item("die", "die.png"));
        item_inv.add(new Item("kitty", "kitty.png"));
        item_inv.add(new Item("glove", "glove.png"));
        item_inv.add(new Item("cleaner", "cleaner.png"));
        item_inv.add(new Item("clover", "clover.png"));

        item_inv.get(0).set_pos(20 * vw, 20 * vh);
        item_inv.get(1).set_pos(41 * vw, 8 * vh);
        item_inv.get(2).set_pos(89 * vw, 48 * vh);
        item_inv.get(3).set_pos(66 * vw, 27 * vh);
        item_inv.get(4).set_pos(37 * vw, 48 * vh);
        item_inv.get(5).set_pos(6 * vw, 59 * vh);
        item_inv.get(6).set_pos(30 * vw, 87 * vh);
        item_inv.get(7).set_pos(54 * vw, 72 * vh);
        item_inv.get(8).set_pos(2 * vw, 20 * vh);
        item_inv.get(9).set_pos(74 * vw, 85 * vh);

        // item_inv.add(new Item("gascan", 75 * vw, 30 * vh, "gascan.png"));
        // item_inv.add(new Item("coin", 55 * vw, 15 * vh, "coin.png"));
        // item_inv.add(new Item("cheese", 55 * vw, 45 * vh, "cheese.png"));
        // item_inv.add(new Item("man", 30 * vw, 5 * vh, "man.png"));
        // item_inv.add(new Item("telephone", 45 * vw, 80 * vh, "telephone.png"));
        // item_inv.add(new Item("dagger", 35 * vw, 20 * vh, "dagger.png"));
        // item_inv.add(new Item("lips", 10 * vw, 45 * vh, "lips.png"));
        // item_inv.add(new Item("breadtag", 70 * vw, 60 * vh, "breadtag.png"));
        // item_inv.add(new Item("hand", 20 * vw, 10 * vh, "hand.png"));
        // item_inv.add(new Item("bottlecap", 45 * vw, 50 * vh, "bottlecap.png"));
        // item_inv.add(new Item("toast", 80 * vw, 30 * vh, "toast.png"));
        // item_inv.add(new Item("propeller", 20 * vw, 25 * vh, "propeller.png"));
        // item_inv.add(new Item("cat", 40 * vw, 50 * vh, "cat.png"));
        // item_inv.add(new Item("chain", 80 * vw, 30 * vh, "chain.png"));
        // item_inv.add(new Item("eye", 40 * vw, 15 * vh, "eye.png"));
        // item_inv.add(new Item("pick", 40 * vw, 76 * vh, "pick.png"));
        // item_inv.add(new Item("bird", 80 * vw, 30 * vh, "bird.png"));
    //
}

// Each Frame
void draw() {   
    rooms.get(0).room_driver();
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

void render_buttons() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(10 *vw , 90 *vh, 10 * vw, 10 * vh, 3, 3, 3, 3);
    rect(90 *vw , 90 *vh, 10 * vw, 10 * vh, 3, 3, 3, 3);
    textAlign(CENTER,CENTER);
    fill(0);
    noStroke();
    text("save", 10 *vw , 90 *vh, 10 * vw, 10 * vh);
    text("quit", 90 *vw , 90 *vh, 10 * vw, 10 * vh);

}
// Event Functions
void mousePressed() {
        if (stage_iterator <= 0) {
            if(overRect(item_inv.get(0).pos_x, item_inv.get(0).pos_y, item_inv.get(0).it_width, item_inv.get(0).it_height)) {
                println("add0");
                Sheet.item_chooser(0);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(1).pos_x, item_inv.get(1).pos_y, item_inv.get(1).it_width, item_inv.get(1).it_height)) {
                println("add1");
                Sheet.item_chooser(1);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(2).pos_x, item_inv.get(2).pos_y, item_inv.get(2).it_width, item_inv.get(2).it_height)) {
                println("add2");
                Sheet.item_chooser(2);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(3).pos_x, item_inv.get(3).pos_y, item_inv.get(3).it_width, item_inv.get(3).it_height)) {
                println("add3");
                Sheet.item_chooser(3);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(4).pos_x, item_inv.get(4).pos_y, item_inv.get(4).it_width, item_inv.get(4).it_height)) {
                println("add4");
                Sheet.item_chooser(4);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(5).pos_x, item_inv.get(5).pos_y, item_inv.get(5).it_width, item_inv.get(5).it_height)) {
                println("add5");
                Sheet.item_chooser(5);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(6).pos_x, item_inv.get(6).pos_y, item_inv.get(6).it_width, item_inv.get(6).it_height)) {
                println("add6");
                Sheet.item_chooser(6);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(7).pos_x, item_inv.get(7).pos_y, item_inv.get(7).it_width, item_inv.get(7).it_height)) {
                println("add7");
                Sheet.item_chooser(7);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(8).pos_x, item_inv.get(8).pos_y, item_inv.get(8).it_width, item_inv.get(8).it_height)) {
                println("add8");
                Sheet.item_chooser(8);
                chosennum++;
                stage_iterator++;
            }
            if(overRect(item_inv.get(9).pos_x, item_inv.get(9).pos_y, item_inv.get(9).it_width, item_inv.get(9).it_height)) {
                println("add9");
                Sheet.item_chooser(9);
                chosennum++;
                stage_iterator++;
            }
            
        }
        else if (stage_iterator == 1) {
            if (overRect(10 *vw , 90 *vh, 10 * vw, 10 * vh)) {
                save("collage.jpg");
                stage_iterator++;
            }
            else if (overRect(90 *vw , 90 *vh, 10 * vw, 10 * vh)) {
                exit();
            }
            else if (overRect(Sheet.x1, Sheet.y1, Sheet.x2 - Sheet.x1, Sheet.y2 - Sheet.y1)) {
                Sheet.ChosenItems.get(chosennum - 1).set_final(mouseX, mouseY);
                stage_iterator++;
            }
            else {
                --stage_iterator;
            }
        }
        else if (stage_iterator == 2) {
            stage_iterator = 0;
        }
    }
