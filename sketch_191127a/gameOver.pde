void gameOver(){
  background(255,0,0);
  if(score>highscore){
    highscore=score;
  }
  lives=3;
  score=0;
  size=100;
  x=width/2;
  y=height/2;
  
  vx=random(-3,3);
  vy=random(-3,3);
  
  fill(255);
  rect(600,100,140,50);
  fill(0);
  textSize(35);
  text("RESET",670,125);
  
  textSize(75);
  text("GAMEOVER",400,400);
  
}

void gameOverClicks(){
  laugh.rewind();
  laugh.play();
 if(mouseX>600&&mouseX<740&&mouseY>100&&mouseY<150){
    mode=INTRO;
  }
}
