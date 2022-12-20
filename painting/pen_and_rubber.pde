
void paint() {

  
  if (mousePressed&& mouseButton==LEFT &&mouseY>300) {
    //  float r=pens.s;
    //  float xpos, ypos;
    //  for (int i=0; i<4; i++) {
    //    xpos=randomGaussian()*range;
    //    ypos=randomGaussian()*range;
    //    fill(0);
    //    noStroke();
    //    ellipse(mouseX+xpos, mouseY+ypos, r, r);
    //  }
    //}
    PVector mp=new PVector(mouseX, mouseY);
    PVector spd =PVector.sub(mp, center);
    spd.mult(0.05);
    center.add(spd);
    for (int i=0; i<as.length; i++) {
      as[i].update(center);
    }
  }
}
void rubber() {
  if (mousePressed&& mouseButton==LEFT&& mouseY>300&&pmouseX>300) {
    
 
    float s=rus.s;
stroke(bg);
strokeWeight(s);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
