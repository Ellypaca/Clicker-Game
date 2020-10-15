void gameover() {
  background(126, 76, 85);

  //game over message
  if (score > highscore) {
    highscore = score;
    fill(0);
    textSize(70);
    text("Game Over!", 400, 200);
    fill(#3CD3C8);
    textSize(90);
    text("Highscore: " + highscore, 400, 400);
  } else {
    fill(0);
    textSize(70);
    text("Game Over!", 400, 200);
    fill(#3CD3C8);
    textSize(90);
    text("Highscore: " + highscore, 400, 400);
  }

  //Return to intro
  fill(0);
  textSize(40);
  text("Click Anywhere to Go to Home", 400, 700);
  


}


void gameoverClicks() {
  mode = INTRO; 
  theme.rewind();
   reset();
}
