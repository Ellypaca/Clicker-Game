void game() {

  //visuals
  background(72, 152, 59);
  // image(Grass, 0, 0, 800, 800); TOO LAGGY, CANNOT USE ON MY COMPUTER, MAY WORK ON YOURS

  //score display
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);

  //pause button
  tactileX      = 50;
  tactileY      = 50;
  tactileW      = 200; 
  tactileH      = 250; 
  tactileStroke = #EDA74A;
  tactileWeight = 10;
  tactileFill   = #ffffff;
  tactile();
  square(100, 100, 100);
  fill(0);
  stroke(0);
  strokeWeight(0);
  rect(85, 100, 15, 50);
  rect(115, 100, 15, 50);
  //image(Treat, 100, 100); TESTING

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  if (SammieCute == true) {
    image(Sammie, x-d/2, y-d/2, d*0.96, d*0.99);
  } else {
    image(Sammie2, x-d/2, 5+y-d/2, d*0.96, d*0.90);
  }
  fill(255, 255, 255, 0);
  circle(x, y, d);



  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width -d/2 ) {
    vx = vx*-1;
  }
  if (y < d/2 || y > height -d/2) {
    vy = vy*-1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    d = d * 1.01;
    coin.rewind();
    coin.play(1);
  } else if (dist(mouseX, mouseY, 80, 120) < 70) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    vx = originalVX;
    vy = originalVY;
    bump.rewind();
    bump.play(1);

    if (lives ==0) {
      theme.pause();
      mode = GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}
