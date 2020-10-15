import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Katelynn Bai 
//Block 1-2
//October 11, 2020



//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIABLES
float x, y, d;  //target properties
float originalVY, originalVX, originalD;
float vx, vy; //target velocity 
boolean SammieCute;

int score, lives, highscore;  

//SOUND VARIABLES
Minim minim;
AudioPlayer coin, bump, pat, miss, gameover, theme;

boolean MusicOn;

PImage IntroScreen, Grass;
PImage SoundOn, SoundOff;
PImage Sammie, Sammie2, Treat;
PImage mouseCursor;

//TACTILE VARIABLES
int tactileX, tactileY, tactileW, tactileH, tactileStroke, tactileWeight, tactileFill;

//SLIDER VARIABLES
float sliderY;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);



  //target initialization 
  score = 0;
  lives = 4;
  x = width/2;
  y = height/2;
  d = 140;
  vx = random(-5, 7);
  vy = random(-5, 7);

  originalVX = vx;
  originalVY = vy;

  //score
  highscore = 0;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("Dogsong.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");

  MusicOn = true;

  //pictures
  Sammie = loadImage("SammieFinal.png");
  Sammie2 = loadImage("Sammie2.png");
  IntroScreen = loadImage("IntroScreen.jpeg");
  Grass = loadImage("Grass.jpg");

  SoundOn = loadImage("SoundOn.png");
  SoundOff = loadImage("SoundOff.png");
  Treat = loadImage("DogTreat.png");

  //slider
  sliderY = 500;
  SammieCute = true;

  mouseCursor = loadImage("Pat.png");
}


void draw() {
  mouseCursor.resize(56, 56);
  cursor(mouseCursor);  
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode Error: Mode = " + mode);
  }
}
