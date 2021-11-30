public class Ostrich {
    PImage[] birds = new PImage[12];
    int currentImage = 0;
    
    public Ostrich() {
        birds[0] = loadImage("Frame01.png");
        birds[1] = loadImage("Frame02.png");
        birds[2] = loadImage("Frame03.png");
        birds[3] = loadImage("Frame04.png");
        birds[4] = loadImage("Frame05.png");
        birds[5] = loadImage("Frame06.png");
        birds[6] = loadImage("Frame07.png");
        birds[7] = loadImage("Frame08.png");
        birds[8] = loadImage("Frame09.png");
        birds[9] = loadImage("Frame10.png");
        birds[10] = loadImage("Frame11.png");
        birds[11] = loadImage("Frame12.png");
        
    }

    void render(float x, float y, float w, float h) { 
        image(birds[currentImage], x, y, w, h);
    }

    void update() {
        currentImage++;
        if (currentImage >= birds.length) {
            currentImage = 0; 
        }
    }
}
    
    
    
    
        