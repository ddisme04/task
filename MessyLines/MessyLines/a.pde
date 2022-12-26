class Agent {
  PVector center;
  PVector spd;
  PVector loc;
  PVector prev;
  float angle=random(TWO_PI);
  float angleSpd=random(0.01, 0.02);
  float rad=random(10, 100);
  color c=color(random(255), random(50, 120), random(150, 200));
  int energy;

  Agent() {
    center=new PVector(random(width), random(height));
    spd=PVector.random2D();
    spd.mult(random(0.2, 1));
    loc=new PVector();
    loc.set(center.x+cos(angle)*rad, center.y+sin(angle)*rad);
    prev=loc.copy();
  }

  void update() {
    center.add(spd);

    angle+=angleSpd;
    loc.set(center.x+cos(angle)*rad, center.y+sin(angle)*rad);

    if (loc.x<0 || loc.x>width || loc.y<0 || loc.y>height) {
      center.set(random(width), random(height));
      loc.set(center.x+cos(angle)*rad, center.y+sin(angle)*rad);
      prev=loc.copy();
      energy=0;
    }
  }

  void display() {
    if (brightness(pic.get(int(loc.x), int(loc.y)))==255) {
      energy-=3;
      energy=max(energy, 0);
    } else {
      energy++;
    }

    if (energy>0) {
      strokeWeight(1);
      stroke(c, 70);
      line(prev.x, prev.y, loc.x, loc.y);
    }     
    prev=loc.copy();
  }
}
