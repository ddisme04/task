
PImage pic;
size(1200,800);

pic=loadImage("IMG_3059.JPG");
pic.resize(0,800);
//image(pic,0,0);

int dot=15;
for(int x=dot;x<width;x+=dot){
  for(int y=dot;y<height;y+=dot){
    color col=pic.get(x,y);
    fill (col);
    noStroke();
    ellipse(x,y,15,15);
  }
}
    
