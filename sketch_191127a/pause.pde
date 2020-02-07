void pause(){
  background(0,255,0);
  fill(255);
  rect(600,100,140,50);
  fill(0);
  textSize(35);
  text("BACK",670,125);
  
  textSize(72);
  text("PAUSE",width/2,height/2);
}

void pauseClicks(){
  laugh.rewind();
  laugh.play();
   if(mouseX>600&&mouseX<740&&mouseY>100&&mouseY<150){
    mode=GAME;
   }
}
