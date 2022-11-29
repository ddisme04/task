


void setup(){
  size(800,800);
  background(248,255,253);
}
 void draw(){
 
 }

 void mousePressed(){
  background(248,255,253);
 float a = random(0,800);
 float b = random(0,800);
 float c = random(b,800);  
   
  fill(#71ADB2);
  stroke(#4BFFD0);
  strokeWeight(10);
  rect(0,0,a,b);
  
  
  fill(#D3BCFF);
  stroke(#4BFFD0);
  strokeWeight(10);
  rect(a,0,800-a,b/2);
  
  fill(#FFF2BF);
  stroke(#4BFFD0);
  rect(a,b,800-a,800-b);
  
  stroke(#4BFFD0);
  strokeWeight(10); 
  line(0,c,a,c);
  
}
