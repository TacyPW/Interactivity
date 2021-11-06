/*
I chose to base this work off of a mural by Edie Fake, 
a queer artist working in southern california. I met Fake a couple of years ago
when they were painting a mural at the Berkeley Art Museum and Pacific Film Archive,
and I was able to learn about their practice of envisioning queer architectures for
a queer universe. This idea struck me as a very powerful way to perform self liberation
through future visioning. I am expecially drawn to these intricate and compelling
graphics because of this integration with the queer identity that I share with them.
*/

void setup() {
    size(700 , 900);
    colorMode(HSB, 360, 255, 255 ,1);
    noLoop();
}

void column(float x, float y, float width, float height) {
    fill(#D90A01);
    stroke(#000000);
    strokeWeight(3);
    float unit = width / 4;
    rect(x, y, width, height);
    fill(#7EAE9D);
    beginShape();
      vertex(x, y);
      vertex(x+width/2, y+unit);
      vertex(x+width/2, y+6*unit);
      vertex(x, y+8*unit);
    endShape(CLOSE);
    fill(#B0BFB8);
    beginShape();
      vertex(x+width, y);
      vertex(x+width/2, y+unit);
      vertex(x+width/2, y+6*unit);
      vertex(x+width, y+8*unit);
    endShape(CLOSE);
    fill(#ECDF74);
    beginShape();
      vertex(x+width/2, y+6*unit);
      vertex(x+width, y+8*unit);
      vertex(x+width, y+height);
      vertex(x, y+height);
      vertex(x, y+8*unit);
    endShape(CLOSE);
    strokeWeight(35);
    line(x+width/2, y+4*unit, x+width/2, y+10*unit);
    strokeWeight(0);
    fill(#000000);
    rectMode(CENTER); 
    rect(x+width/2, y+13.5*unit, 35, 7.7*unit);
    rectMode(CORNER);
}

void door(float x, float y, float width, float height) {
    fill(#000000);
    stroke(#000000);
    strokeWeight(3);
    rect(x, y, width, height);
    float unit = width / 6;
    fill(#947493);
    beginShape();
      vertex(x+(3*unit), y);
      vertex(x+(4*unit), y);
      vertex(x+(4*unit), y+(3.5*unit));
      vertex(x+(3*unit), y+(3.5*unit));
      vertex(x+(3*unit), y+(6*unit));
      vertex(x+(2*unit), y+(6*unit));
      vertex(x+(2*unit), y+(8.5*unit));
      vertex(x+(1*unit), y+(8.5*unit));
      vertex(x+(1*unit), y+(11*unit));
      vertex(x, y+(11*unit));
      vertex(x, y+(7*unit));
      vertex(x+(1*unit), y+(7*unit));
      vertex(x+(1*unit), y+(4.5*unit));
      vertex(x+(2*unit), y+(4.5*unit));
      vertex(x+(2*unit), y+(2*unit));
      vertex(x+(3*unit), y+(2*unit));
      vertex(x+(3*unit), y);
    endShape(CLOSE);
    fill(#ECDF74);
    beginShape();
      vertex(x+(4*unit), y);
      vertex(x+(4*unit), y+(3.5*unit));
      vertex(x+(3*unit), y+(3.5*unit));
      vertex(x+(3*unit), y+(6*unit));
      vertex(x+(2*unit), y+(6*unit));
      vertex(x+(2*unit), y+(8.5*unit));
      vertex(x+(1*unit), y+(8.5*unit));
      vertex(x+(1*unit), y+(11*unit));
      vertex(x, y+(11*unit));
      vertex(x, y+(15*unit));
      vertex(x+(1*unit), y+(15*unit));
      vertex(x+(1*unit), y+(12.5*unit));
      vertex(x+(2*unit), y+(12.5*unit));
      vertex(x+(2*unit), y+(10*unit));
      vertex(x+(3*unit), y+(10*unit));
      vertex(x+(3*unit), y+(7.5*unit));
      vertex(x+(4*unit), y+(7.5*unit));
      vertex(x+(4*unit), y+(5*unit));
      vertex(x+(5*unit), y+(5*unit));
      vertex(x+(5*unit), y);
    endShape(CLOSE);
    fill(#EEEEEE);
    triangle(x+width, y+5.5*unit, x+width, y+height, x+unit, y+height);
    fill(#947493);
    triangle(x+width, y+9.5*unit, x+width, y+height, x+3*unit, y+height);
}

void trisq(float x, float y, float width, float height) {
  fill(#E1DBDB);
    stroke(#000000);
    strokeWeight(3);
    rect(x, y, width, height);
    fill(#EE3E01);
    triangle(x, y, x+width, y+height/2, x, y+height);
}

void bat(float x, float y) {
    fill(#C6D2C7);
    stroke(#000000);
    strokeWeight(3);
    beginShape();
      vertex(x, y);
      vertex(332.5, 350);
      bezierVertex(350, 350, 350, 350-17.5, 350, 350-17.5);
      bezierVertex(350, 350-17.5, 350, 350-35, 332.5, 350-35);
      vertex(130+38, 350-35);
    endShape();
}

void bat2(float x, float y) {
pushMatrix();
      translate(700,0);
      scale(-1,1); 
    bat(130, 350);
    popMatrix();
}


void draw() {
    background(0, 0, 255, 1);
    stroke(#000000);

    strokeWeight(3);
    
    fill(#C6D2C7);
    circle(350, 350, 440);
    
    fill(#E8DAC8);
    circle(350, 350, 185 * 2);
    
    fill(#ECDF74);
    circle(350, 350, 150 * 2);
    
    fill(#D5DEB8);
    circle(350, 350, 115 * 2);
    
    fill(0);
    circle(350, 350, 80 * 2);
    
    fill(#A77602);
    rect(130, 350, 440, 500);
    
    fill(#EEEEEE);
    rect(147.5, 367.5, 405, 482.5);
    
    fill(#000000); 
    rect(165, 385, 370, 466);
    
    fill(#C8B4CD);
    rect(182.5, 402.5, 167.5, 448);
    rect(350, 402.5, 167.5, 448);
    
    door(367.5, 437.5, 132.5, 360.5);
    pushMatrix();
      translate(400,0);
      scale(-1,1); 
      door(67.5, 437.5, 132.5, 360.5);
    popMatrix();
    
    column(112.5, 547.9166666666666, 70, 302.08333333333337);
    column(165+370-17.5, 547.9166666666666, 70, 302.08333333333337);

    strokeWeight(35);
    stroke(#000000);
    fill(#FFFFFF);
    beginShape();
      vertex(-293.2956, 47.0564);
      vertex(126.5248, 47.0564);
      bezierVertex(126.5248, 47.0564, 126.5248, 47.0564, 126.5248, 186.8303);
      bezierVertex(85, 237.5397, 75, 368.6861, 78.5306, 368.6861);
      vertex(78.5306, 966.0072);
    endShape();
    
    strokeWeight(29);
    stroke(#ECDF74);
    fill(0,0,0,0);
    beginShape();
      vertex(-293.2956, 47.0564);
      vertex(126.5248, 47.0564);
      bezierVertex(126.5248, 47.0564, 126.5248, 47.0564, 126.5248, 186.8303);
      bezierVertex(85, 237.5397, 75, 368.6861, 78.5306, 368.6861);
      vertex(78.5306, 966.0072);
    endShape();
    
    for (int i = 1; i <= 7; ++i) {
      trisq(605,430-35*i,35,35);
    }
    for (int i = 1; i <= 7; ++i) {
      trisq(605,395+35*i,35,35);
    }
    for (int i = 1; i <= 5; ++i) {
      trisq(605+35*i,185,35,35);
    }
    
    bat(130, 350);
    bat2(130,350);
    
    /*
    for (int i = 0; i < 700; ++i) {
      line(0, i*100, 900, i*100);
    }
    for (int i = 0; i < 900; ++i) {
      line(i*100, 0, i*100, 900);
    }
    */
}
