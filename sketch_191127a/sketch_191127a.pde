import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


int mode;
int GAME=0;
int GAMEOVER=1;
int INTRO=2;
int OPTION=3;
int PAUSE=4;
float x,y;
int score,lives;
float vx,vy;
float sliderx;
float size=100;
PImage trollface0;
PImage trollface1;
int tool;
int highscore;

Minim minim;
AudioPlayer laugh;
AudioPlayer laughs;
void setup(){
  size(800,800);
  mode=INTRO;
  textAlign(CENTER,CENTER);
  minim = new Minim(this);
  laugh=minim.loadFile("song.mp3");
  laughs=minim.loadFile("laugh.mp3");
  
  x=width/2;
  y=height/2;
  score=0;
  lives=3;
  vx=random(-3,3);
  vy=random(-3,3);
  sliderx=400;
  highscore=0;
  
}

void draw(){
  if(mode==INTRO){
    intro();
  }
  else if(mode==GAME){
    game();
  }
  else if(mode==GAMEOVER){
  gameOver();
  }
  else if(mode==OPTION){
  option();
  }
  else if(mode==PAUSE){
  pause();
  }
  else{
  System.out.println("MODE ERROR");
  } 
  
}
