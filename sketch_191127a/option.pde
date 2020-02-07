
void option(){
  background(255);
   //slider

  line(150,200,650,200);
  ellipse(sliderx,200,50,50);
  if(dist(sliderx,200,mouseX,mouseY)<=25&&mousePressed){
    sliderx=mouseX;
  }
  if (sliderx<150){
  sliderx=150;
  }
  if(sliderx>650){
  sliderx=650;
  }
  size=map(sliderx,50,550,50,150);
  
  fill(255);
  ellipse(400,400,size,size);
  rect(600,100,140,50);
  fill(0);
  text("DONE",670,125);
  text("SKIN:",150,600);
  
  //target skin
  trollface0=loadImage("trollface0.png");
  trollface1=loadImage("trollface1.png");
  imageMode(CENTER);
  image(trollface0,300,600,100,100);
  image(trollface1,600,600,100,100);
  
  if(tool==1)image(trollface0,400,400,(85*size/100),(85*size/100));
  if(tool==2)image(trollface1,400,400,(85*size/100),(85*size/100));
}

void optionClicks(){
  laughs.rewind();
  laughs.play();
  
  if(mouseX>600&&mouseX<740&&mouseY>100&&mouseY<150){
    mode=INTRO;
   }
  if(mouseX>250&&mouseX<350&&mouseY>550&&mouseY<650){
  tool=1;
  }
  if(mouseX>550&&mouseX<650&&mouseY>550&&mouseY<650){
  tool=2;
  }
}
