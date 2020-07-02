/*
  
 Copyright 2020 - Freny Antony/procedural.disarray
 
 Feel free to change and play around with the code and
 don't forget to attribute the creator. Enjoy!
 
 --Pixelation Tool--
 
 Libraries Required :
 
 *Processing PDF
 *G4P 
 
 For best results use a square image with 900x900 pixels
 
 */
import g4p_controls.*;

import processing.pdf.*;
import java.util.Calendar;

ArrayList<Grid> grids;

PImage img;
PGraphics hires;
int scaleFactor = 5;

int xCount = 100;
int yCount = 100;

float xStep, yStep;

float wiggleVal;
float proxVal = 50;

int hexColor = 0;
boolean savePNG = false;
boolean savePDF = false;
boolean resetVal=false;
boolean enlargeMode = true;
boolean showImage = false;

void setup() {
  size(900, 1000, JAVA2D);

  img = loadImage("source-00.jpg"); // Update the Image name here
  img.resize(900, 0);

  hires = createGraphics(width*scaleFactor, width*scaleFactor, JAVA2D);

  createGUI();

  grids = new ArrayList<Grid>();

  xStep = width/ (float) xCount;
  yStep = (height - 100)/ (float) yCount;

  color c;

  for (int gx = 0; gx < xCount; gx++) {
    for (int gy = 0; gy < yCount; gy++) { 
      float x = gx*xStep;
      float y = gy*yStep;

      c = img.get(int(x), int(y));

      grids.add(new Grid(x, y, 0, c));
    }
  }
}

void draw() { 
  if (savePDF) {
    beginRecord(PDF, "output/" + timeStamp() + "vector.PDF");
  }
  if (savePNG) {    
    beginRecord(hires);
    hires.scale(scaleFactor);
  }

  background(hexColor);
  if (showImage) {
    image(img, 0, 0);
  }

  push();
  translate(xStep/2, yStep/2);
  for (Grid g : grids) {
    if (g.proximity(mouseX, mouseY, proxVal)) {
      if (mousePressed && mouseY < 900) {
        g.wiggle(wiggleVal, enlargeMode);
      }
      g.makeGrid();
    } else {
      g.makeGrid();
    }
  }

  if (resetVal) {
    for (Grid g : grids) {
      g.reset();
    }
    resetVal = false;
  }
  pop();

  noFill();
  stroke(0);
  circle(mouseX, mouseY, proxVal);
  noStroke();
  fill(0);
  rect(0, 900, width, 100);

  if (savePNG) {
    endRecord();
    hires.save("output/" + timeStamp() + "-hires.png");
    println("Image Saved");
    savePNG=false;
  }

  if (savePDF) {
    endRecord();
    println("PDF Saved");
    savePDF = false;
  }
}

String timeStamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
