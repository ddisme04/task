agent[]as;
PVector center;
color col;
PImage pic;
void setup(){
  size(800,1200);
  background (0);
   colorMode(HSB); 
  


pic=loadImage("de2.jpg");
pic.resize(800,1200);
//   int dot=1;
//for(int x=dot;x<width;x+=dot){
//  for(int y=dot;y<height;y+=dot){

// col=(pic.get(x,y));
//  }
//}   
//  if ( brightness(col)>100){
//   stroke(#FFFCFC,5);
// }else{
//    noStroke();
// }
   
 
    as=new agent[500];
    for(int i=0;i<as.length;i++){
      as[i]=new agent();
    }
    
    center=new PVector(0,0);
}
    void draw(){
      
      PVector mp=new PVector(mouseX,mouseY);
      PVector spd =PVector.sub(mp,center);
      spd.mult(0.1);
      center.add(spd);
   
      if (mousePressed){
        //background(0);
        save("david.jpg");
      }
      for(int i=0;i<as.length;i++){
       
      as[i].update(center);
      }
     
    }
    


class agent{
  PVector pos;
PVector spd;
PVector prev;
float indi;

agent(){
        pos=new PVector(random(width), random(height));
        prev=pos.copy();
          spd=new PVector(0, 0);
          indi=random(0.2,5);
}

void update(PVector target){
  PVector acc=PVector.sub(target, pos);
  acc.mult(0.01);
  acc.mult(indi);
  spd.add(acc);
  pos.add(spd);
    spd.mult(0.96);
  color col=(pic.get(int(pos.x), int(pos.y)));

    if ( brightness(col)>100) {
      stroke(#FFFCFC, 5);
    } else {
      noStroke();
    }

  line(pos.x, pos.y,prev.x,prev.y);
  
     prev=pos.copy();
}
}
