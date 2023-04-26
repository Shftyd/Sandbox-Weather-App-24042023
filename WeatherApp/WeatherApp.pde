import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Libraries and dependancies
//
//global Variables
float positionX, positionY, positionWidth, positionHeight;
//
void setup() {
  musicSetup ();
  music();
  fullScreen();
  positionX = width * 1/3;
  positionY = height * 2/3;
  positionWidth = width * 8/20;
  positionHeight = height * 10/50;
} //End setup
//
void draw() {
  rect(positionX, positionY, positionWidth, positionHeight);
  background(0);
  textAlign(CENTER);
  textSize(32);
  text(player.position()/1000, width/2, height/2);
  
} //End draw
//
void keyPressed() {
  musicKeyPressed();
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
