int num=400;
Agent[]as;
PImage pic;
boolean playing=true;

void setup() {
  size(1000,1000);
  colorMode(HSB);
  as=new Agent[num];
  for (int i=0; i<num; i++) {
    as[i]=new Agent();
  }

  pic=loadImage("700.png");
  pic.resize(width, height);
  pic.filter(THRESHOLD, 0.3);

  background(255);
}

void draw() {
  for (int i=0; i<num; i++) {
    as[i].update();
    as[i].display();
  }
}

void mousePressed(){
  playing=!playing;
  if(playing){
    loop();
  }else{
    noLoop();
  }
}

void keyPressed(){
  if(key==' '){
    saveFrame(""+frameCount+".png");
  }
  if(key=='r'){
    background(255);
  }
}
