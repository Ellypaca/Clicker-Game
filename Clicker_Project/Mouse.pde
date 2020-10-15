void mouseReleased() {
  if (mode == INTRO) {
    introGameClicks();
    introOptionClicks();
  } else if (mode == OPTIONS) {
    optionsSoundClicks();
    optionsBackClicks();
    optionSammieClick1();
    optionSammieClick2();
    controlSlider();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
    pauseClicksHome();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println("Error: Mode = " + mode);
  }
}

void mouseDragged() {
  if (mode == OPTIONS) {
    controlSlider();
  }
}
