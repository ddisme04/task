float px=80, py=100, rx=80, ry=200;
boolean  on ;
color bg=255;
button pen, ru;
slide pens, rus;
float r=50;
agent[]as;
PVector center;
color col;


void setup() {
  size (1600, 2000);
  background(bg);
  line(0, 300, width, 300);

  pen= new button(px, py, r);
  ru= new button(rx, ry, r);
  pen.drawbutton();
  ru. drawbutton();
  pens=new slide(px*3.5, py);
  rus=new slide(rx*3.5, ry);
  pens.showup();
  rus. showup();
  textSize(30);
  text("pencil", 150, py+10);
  text("rubber", 150, ry+10);

  as=new agent[50];
  for (int i=0; i<as.length; i++) {
    as[i]=new agent();
  }

  center=new PVector(0, 0);
}

void draw() {
  pen.act();
  ru.  act();
  pens.act();
  rus. act();
  line(0, 300, width, 300);
  ////////// 这边；逻辑不太通////////
  if (ru.on==true ) {
    fill(255);
    ellipse(px, py, r+15, r+15);
    fill(0);
    ellipse(px, py, r, r);
    pen.on=false;
    rubber();
  }
  if (pen.on==true) {
    fill(255, 75);
    ellipse(rx, ry, r+15, r+15);
    fill(0);
    ellipse(rx, ry, r, r);
    ru.on=false;
    paint();
  }

  /////////////
  float col=400-rus.s;
  textSize(30);
  fill(col,90);
  text("Right mouse button to clear", 680, ry+10);

  if (mousePressed&&mouseButton==RIGHT) {
    fill(255);
    rect(0, 300, width, height-300);
  }
}

void mouseClicked() {
  pen.turnon();
  ru.  turnon();
}
