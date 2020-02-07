void intro(){
  background(255);
  strokeWeight(5);
  fill(255);
  rect(300,500,200,100);
  fill(0);
  textSize(72);
  text("CLICKER GAME",400,400);
  textSize(35);
  text("START",400,550);
  
  fill(255);
  rect(600,100,140,50);
  fill(0);
  textSize(35);
  text("OPTION",670,125);
}

void introClicks(){
  laugh.rewind();
  laugh.play();
  if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<600){
    mode=GAME;
  }
  if(mouseX>600&&mouseX<740&&mouseY>100&&mouseY<150){
    mode=OPTION;
  }
}
