void intro() {
  gameover.pause();

  if (MusicOn == true) {
    theme.play();
  }

  background(222, 255, 177);
  textSize(73);
  fill(0);
  text("Dog Petting Game", 400, 200);

  //TACTILE FOR START BUTTON
  tactileX      = 70;
  tactileY      = 520;
  tactileW      = 600; //multiplied original value by 2
  tactileH      = 200;  //multiplied original value by 2
  tactileStroke = #EDA74A;
  tactileWeight = 10;
  tactileFill   = #FFD1D1;
  tactile();

  //start button
  textSize(56);
  rect(220, 550, 300, 100);
  fill(0);
  text("START", 220, 540);



  //TACTILE FOR OPTIONS BUTTON
  tactileX      = 430;
  tactileY      = 500;
  tactileW      = 650; //multiplied original value by 2
  tactileH      = 250;  //multiplied original value by 2
  tactileStroke = #EDA74A;
  tactileWeight = 10;
  tactileFill   = #FFD1D1;
  tactile();


  //options button
  rect(580, 550, 300, 100);
  fill(0);
  text("OPTIONS", 580, 540);
}


void introGameClicks() {
  if (mouseX > 70 && mouseX < 370 && mouseY > 550 && mouseY < 650) {
    mode = GAME;
  }
}

void introOptionClicks () {
  if (mouseX > 430 && mouseX < 730 && mouseY > 550 && mouseY < 650) {
    mode = OPTIONS;
  }
}
