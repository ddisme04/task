
PImage pic;
size(1200,800);

pic=loadImage("IMG_3059.JPG");
pic.resize(0,800);


colorMode(HSB);

int dot=10;
for(int x=dot;x<width;x+=dot){
  for(int y=dot;y<height;y+=dot){
    
    color col=(pic.get(x,y));
  
    fill (0,0,brightness(col));
    noStroke();
    ellipse(x,y,9,9);
  }
  save("draft.png");
}
    
