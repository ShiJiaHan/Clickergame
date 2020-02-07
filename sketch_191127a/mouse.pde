void mouseReleased(){
  
  if(mode==INTRO){
    introClicks();
  }
  else if(mode==GAME){
    gameClicks();
  }
  else if(mode==GAMEOVER){
  gameOverClicks();
  }
  else if(mode==OPTION){
  optionClicks();
  }
  else if(mode==PAUSE){
  pauseClicks();
  }
  else{
  System.out.println("MODE ERROR");
  } 
}
