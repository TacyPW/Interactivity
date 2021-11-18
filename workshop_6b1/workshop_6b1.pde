Wheel rueda1 = new Wheel(200, 0.05);
Wheel rueda2 = new Wheel(100, .008);
Wheel rueda3 = new Wheel(50, 0.1);

void setup() {
  size(600, 400); 
  pixelDensity(2);
  background(#FFFFFF);

  rueda1.setColor(#FF0000);
  rueda2.setColor(#00FF00);
  rueda3.setColor(#0000FF);
}

void draw() {  
  rueda1.updateWheel();
  rueda1.displayWheel(300, 200);

  rueda2.updateWheel();
  rueda2.displayWheel(350, 250);

  rueda3.updateWheel();
  rueda3.displayWheel(215, 115);
}



