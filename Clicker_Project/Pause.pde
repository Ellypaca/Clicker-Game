void pause() {
  theme.pause();
  fill(0);
  textSize(90);
  text("PAUSE", 400, 300);
  fill(0, 0, 0, 40);
  tactileX      = 200;
  tactileY      = 530;
  tactileW      = 800; 
  tactileH      = 300;  
  tactileStroke = #EDA74A;
  tactileWeight = 10;
  tactileFill   = #FFD1D1;
  tactile();
  rect(400, 600, 400, 100);
  fill(0);
  textSize(60);
  text("Home", 400, 590);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    theme.play();
    mode = GAME;
  }
} 

void pauseClicksHome() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 550 && mouseY < 665) {
    mode = INTRO;
  }
}
