void tactile() {
  if (mouseX > tactileX && mouseX < tactileX+tactileW/2 && mouseY > tactileY && mouseY < tactileY+tactileH/2) {
    stroke(tactileStroke);
    strokeWeight(tactileWeight);
    fill(tactileFill);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }
}

void reset() {
  x = width/2;
  y = height/2; 
  score = 0;
  lives = 4;
  vx = random(-5, 7);
  vy = random(-5, 7);

  originalVX = vx;
  originalVY = vy;
  
  d = originalD;
  
}
