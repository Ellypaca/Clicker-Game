void options() {
  //visuals
  background(222, 255, 177);
  textSize(73);
  fill(0);
  text("Options", 400, 150);


  //OK BUTTON
  //OK BUTTON TACTILE
  tactileX      = 550;
  tactileY      = 35;
  tactileW      = 450; 
  tactileH      = 200;  
  tactileStroke = #EDA74A;
  tactileFill   = #FFFFFF;
  tactileWeight = 5;
  tactile();
  rect(660, 75, 200, 80);
  textSize(50);
  fill(0);
  text("Ok", 660, 75);


  //TURN MUSIC OFF
  fill(255, 255, 255, 0);
  //MUSIC BUTTON TACTILE
  tactileX      = 70;
  tactileY      = 250;
  tactileW      = 250; 
  tactileH      = 250;  
  tactileStroke = #EDA74A;
  tactileWeight = 5;
  tactile();
  circle(120, 300, 100);
  if (MusicOn == true) {
    image(SoundOn, 85, 265, 70, 70);
  } else {
    image(SoundOff, 85, 265, 70, 70);
  }



  //CHANGE DOG FACE
  tactileX      = 40;
  tactileY      = 390;
  tactileW      = 320; 
  tactileH      = 320;  
  tactileStroke = #EDA74A;
  tactileWeight = 5;
  tactile();
  circle(120, 470, 160);

  tactileX      = 40;
  tactileY      = 600;
  tactileW      = 320; 
  tactileH      = 320;  
  tactileStroke = #EDA74A;
  tactileWeight = 5;
  tactile();
  circle(120, 670, 160);
  image(Sammie, 50, 400, 140, 140);
  image(Sammie2, 40, 600, 150, 130);



  //SLIDER
  d = map(sliderY, 320, 665, 70, 180);
  originalD = d;

  tactileX      = 650;
  tactileY      = 320;
  tactileW      = 200; 
  tactileH      = 950; 
  tactileStroke = #EDA74A;
  tactileWeight = 5;
  tactileFill   = #41A586;
  tactile();
  triangle(700, 320, 650, 665, 750, 665);
  circle(700, sliderY, d);

  //DISPLAY CURRENT DOG FACE
  strokeWeight(2);
  stroke(0);
  fill(255);
  rect(400, 500, 200, 200);
  if (SammieCute == true) {
    image(Sammie, 300+d/-90, 400, d, d);
  } else {
    image(Sammie2, 290+d/-90, 410, d*1.2, d);
  }
}


void optionsSoundClicks() {
  if (mouseX > 120 && mouseX < 220 && mouseY > 300 && mouseY < 400 && MusicOn == true) {
    theme.pause();
    MusicOn = false;
  } else if (mouseX > 120 && mouseX < 220 && mouseY > 300 && mouseY < 400 && MusicOn == false) {
    theme.play();
    MusicOn = true;
  }
}


void optionSammieClick1() {
  if (mouseX > 40 && mouseX < 360 && mouseY > 390 && mouseY < 710) {
    SammieCute = true;
  }
}

void optionSammieClick2() {
  if (mouseX > 40 && mouseX < 360 && mouseY > 600 && mouseY < 920) {
    SammieCute = false;
  }
}

void controlSlider() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 320 && mouseY < 665) {
    sliderY = mouseY;
  }
}

void optionsBackClicks() {
  if (mouseX > 560 && mouseX < 780 && mouseY >75 && mouseY < 155) {
    mode = INTRO;
  }
}
