class agent {
  PVector pos;
  PVector spd;
  PVector prev;
  float indi;

  agent() {
    pos=new PVector(random(width), random(height));
    prev=pos.copy();
    spd=new PVector(0, 0);
    indi=random(0.2, 5);
  }

  void update(PVector target) {
    PVector acc=PVector.sub(target, pos);
    acc.mult(0.01);
    acc.mult(indi);
    spd.add(acc);
    pos.add(spd);
    spd.mult(0.96);

    if (pos.y>300 &&prev.y>300) {

      float r=pens.s;
      strokeWeight(r*0.01);
      line(pos.x, pos.y, prev.x, prev.y);
    } else {
      noStroke();
    }

    //line(pos.x, pos.y,prev.x,prev.y);

    prev=pos.copy();
  }
}
