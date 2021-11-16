import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Project_1 extends PApplet {

public void setup() {
    
    colorMode(HSB, 360, 255, 255 ,1);
    noLoop();
}

public void column(float x, float y, float width, float height) {
    fill(0xffD90A01);
    stroke(0xff000000);
    strokeWeight(3);
    float unit = width / 4;
    rect(x, y, width, height);
    fill(0xff7EAE9D);
    beginShape();
      vertex(x, y);
      vertex(x+width/2, y+unit);
      vertex(x+width/2, y+6*unit);
      vertex(x, y+8*unit);
    endShape(CLOSE);
    fill(0xffB0BFB8);
    beginShape();
      vertex(x+width, y);
      vertex(x+width/2, y+unit);
      vertex(x+width/2, y+6*unit);
      vertex(x+width, y+8*unit);
    endShape(CLOSE);
    fill(0xffECDF74);
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
    fill(0xff000000);
    rectMode(CENTER); 
    rect(x+width/2, y+13.5f*unit, 35, 7.7f*unit);
    rectMode(CORNER);
}

public void door(float x, float y, float width, float height) {
    fill(0xff000000);
    stroke(0xff000000);
    strokeWeight(3);
    rect(x, y, width, height);
    float unit = width / 6;
    fill(0xff947493);
    beginShape();
      vertex(x+(3*unit), y);
      vertex(x+(4*unit), y);
      vertex(x+(4*unit), y+(3.5f*unit));
      vertex(x+(3*unit), y+(3.5f*unit));
      vertex(x+(3*unit), y+(6*unit));
      vertex(x+(2*unit), y+(6*unit));
      vertex(x+(2*unit), y+(8.5f*unit));
      vertex(x+(1*unit), y+(8.5f*unit));
      vertex(x+(1*unit), y+(11*unit));
      vertex(x, y+(11*unit));
      vertex(x, y+(7*unit));
      vertex(x+(1*unit), y+(7*unit));
      vertex(x+(1*unit), y+(4.5f*unit));
      vertex(x+(2*unit), y+(4.5f*unit));
      vertex(x+(2*unit), y+(2*unit));
      vertex(x+(3*unit), y+(2*unit));
      vertex(x+(3*unit), y);
    endShape(CLOSE);
    fill(0xffECDF74);
    beginShape();
      vertex(x+(4*unit), y);
      vertex(x+(4*unit), y+(3.5f*unit));
      vertex(x+(3*unit), y+(3.5f*unit));
      vertex(x+(3*unit), y+(6*unit));
      vertex(x+(2*unit), y+(6*unit));
      vertex(x+(2*unit), y+(8.5f*unit));
      vertex(x+(1*unit), y+(8.5f*unit));
      vertex(x+(1*unit), y+(11*unit));
      vertex(x, y+(11*unit));
      vertex(x, y+(15*unit));
      vertex(x+(1*unit), y+(15*unit));
      vertex(x+(1*unit), y+(12.5f*unit));
      vertex(x+(2*unit), y+(12.5f*unit));
      vertex(x+(2*unit), y+(10*unit));
      vertex(x+(3*unit), y+(10*unit));
      vertex(x+(3*unit), y+(7.5f*unit));
      vertex(x+(4*unit), y+(7.5f*unit));
      vertex(x+(4*unit), y+(5*unit));
      vertex(x+(5*unit), y+(5*unit));
      vertex(x+(5*unit), y);
    endShape(CLOSE);
    fill(0xffEEEEEE);
    triangle(x+width, y+5.5f*unit, x+width, y+height, x+unit, y+height);
    fill(0xff947493);
    triangle(x+width, y+9.5f*unit, x+width, y+height, x+3*unit, y+height);
}

public void trisq(float x, float y, float width, float height) {
  fill(0xffE1DBDB);
    stroke(0xff000000);
    strokeWeight(3);
    rect(x, y, width, height);
    fill(0xffEE3E01);
    triangle(x, y, x+width, y+height/2, x, y+height);
}

public void bat(float x, float y) {
    fill(0xffC6D2C7);
    stroke(0xff000000);
    strokeWeight(3);
    beginShape();
      vertex(x, y);
      vertex(332.5f, 350);
      bezierVertex(350, 350, 350, 350-17.5f, 350, 350-17.5f);
      bezierVertex(350, 350-17.5f, 350, 350-35, 332.5f, 350-35);
      vertex(130+38, 350-35);
    endShape();
}

public void bat2(float x, float y) {
pushMatrix();
      translate(700,0);
      scale(-1,1); 
    bat(130, 350);
    popMatrix();
}


public void draw() {
    background(0, 0, 255, 1);
    stroke(0xff000000);

    strokeWeight(3);
    
    fill(0xffC6D2C7);
    circle(350, 350, 440);
    
    fill(0xffE8DAC8);
    circle(350, 350, 185 * 2);
    
    fill(0xffECDF74);
    circle(350, 350, 150 * 2);
    
    fill(0xffD5DEB8);
    circle(350, 350, 115 * 2);
    
    fill(0);
    circle(350, 350, 80 * 2);
    
    fill(0xffA77602);
    rect(130, 350, 440, 500);
    
    fill(0xffEEEEEE);
    rect(147.5f, 367.5f, 405, 482.5f);
    
    fill(0xff000000); 
    rect(165, 385, 370, 466);
    
    fill(0xffC8B4CD);
    rect(182.5f, 402.5f, 167.5f, 448);
    rect(350, 402.5f, 167.5f, 448);
    
    door(367.5f, 437.5f, 132.5f, 360.5f);
    pushMatrix();
      translate(400,0);
      scale(-1,1); 
      door(67.5f, 437.5f, 132.5f, 360.5f);
    popMatrix();
    
    column(112.5f, 547.9166666666666f, 70, 302.08333333333337f);
    column(165+370-17.5f, 547.9166666666666f, 70, 302.08333333333337f);

    strokeWeight(35);
    stroke(0xffECDF74);
    fill(0xffFFFFFF);
    beginShape();
      vertex(-293.2956f, 47.0564f);
      vertex(126.5248f, 47.0564f);
      bezierVertex(126.5248f, 47.0564f, 126.5248f, 47.0564f, 126.5248f, 186.8303f);
      bezierVertex(85, 237.5397f, 75, 368.6861f, 78.5306f, 368.6861f);
      vertex(78.5306f, 966.0072f);
    endShape();
    strokeWeight(32);
    stroke(0xffECDF74);
    fill(0xffFFFFFF);
    beginShape();
      vertex(-293.2956f, 47.0564f);
      vertex(126.5248f, 47.0564f);
      bezierVertex(126.5248f, 47.0564f, 126.5248f, 47.0564f, 126.5248f, 186.8303f);
      bezierVertex(85, 237.5397f, 75, 368.6861f, 78.5306f, 368.6861f);
      vertex(78.5306f, 966.0072f);
    endShape();
    for (int i = 1; i <= 7; ++i) {
      trisq(605,430-35*i,35,35);
    }
    for (int i = 1; i <= 10; ++i) {
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
  public void settings() {  size(700 , 900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Project_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
