
void game(){
  background(0,255,0);
  strokeWeight(5);
  fill(255);
  ellipse(x,y,size,size);
  
  if(score>highscore){
    highscore=score;
  }
  
  x=x+vx;
  y=y+vy;
  if(y<size/2||y>height-size/2)vy=-vy;
  if(x<size/2||x>width-size/2)vx=-vx;
  
 
  if(tool==1)image(trollface0,x,y,(85*size/100),(85*size/100));
  if(tool==2)image(trollface1,x,y,(85*size/100),(85*size/100));

  fill(255);
  rect(600,100,140,50);
  fill(0);
  textSize(35);
  text("PAUSE",670,125);
  
  text("Score:"+score,width/2,50 );
  text("Lives:"+lives,width/2,100 );
  text("Highscore:"+highscore,width/2,150 );
  
  
}

void gameClicks(){
  laugh.rewind();
  laugh.play();
  
  if(dist(mouseX,mouseY,x,y)<size){
    score++; 
  }
  else if(mouseX>600&&mouseX<740&&mouseY>100&&mouseY<150){
    mode=PAUSE;
  }
  else{
    lives--;
  }
 if(lives==0) mode=GAMEOVER;
 
  if(score%5==0){
    if(vx>0)vx++;
    else if(vx<0)vx--;
    else if(vy>0)vy++;
    else if(vy<0)vy--;
  }
  
}
