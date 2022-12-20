class button {
  float x;
  float y;
  boolean on=false;
  float r;

  button(float x_, float y_, float r_) {
    x=x_;
    y=y_;
    r=r_;
  }

  void drawbutton() {
    fill(255);
    strokeWeight(1);
    ellipse(x, y, r+15, r+15);
    fill(0);
    strokeWeight(1);
     stroke(0);
    ellipse(x, y, r, r);
  }

  void act() {
    if (dist(mouseX, mouseY, x, y)<r) {
      fill(#32FAA2);
      strokeWeight(1);
       stroke(0);
      ellipse(x, y, r+15, r+15);
    } else {
      fill(255);
      strokeWeight(1);
      stroke(0);
      ellipse(x, y, r+15, r+15);
      strokeWeight(1);
      fill(0);
       stroke(0);
      ellipse(x, y, r+15, r+15);
    }
    if (on==true) {
      fill(#A5A5A5);
      strokeWeight(1);
       stroke(0);
      ellipse(x, y, r+15, r+15);
    }
  }
  void turnon() {
    if (dist(mouseX, mouseY, x, y)<r) {
      on=!on;
    }
  }
}



class slide {
  float x, y;
  float r=20;
  float ax, ay;
  float s=15;

  slide(float x_, float y_) {
    ax=x_;
    ay=y_;
  }
  void showup() {
    strokeWeight(2);
    stroke(0);
    line(ax, ay, ax+350, ay);
    fill(0);
    strokeWeight(1);
     stroke(0);
    ellipse(ax, ay, r, r);
  }

  void act() {
    if (dist(mouseX, mouseY, ax, ay)<r) {
strokeWeight(1);
      fill(#32FAA2);
       stroke(0);
      ellipse(ax, ay, r+5, r+5);
    } else {
strokeWeight(1);
      fill(0);
       stroke(0);
      ellipse(ax, ay, r, r);
    }
    strokeWeight(2);
    stroke(0);
    line(280, ay, 280+350, ay);

    if (dist(mouseX, mouseY, ax, ay)<r && mousePressed) {

      if (mouseX<630 &&mouseX>280) {
        fill(255);
        noStroke();
        rect(250, ay-r, 400, 40);
        stroke(0);
        strokeWeight(2);
        line(280, ay, 280+350, ay);
        fill(#32FAA2);
        strokeWeight(1);
         stroke(0);
        ax=mouseX;
        ellipse(ax, ay, r+5, r+5);
        s=map(ax, 250, 630, 15, 200);
      }
    }
  }
}
