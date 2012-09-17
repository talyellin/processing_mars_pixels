PImage mars;
color c;

void setup() {
  size(600,500);
  smooth();
  strokeWeight(100);
  noFill();
  mars = loadImage("image.jpg");
}

void draw() {
  image(mars, 0,0);
  float fc = frameCount/2;
  float offset = sin(fc);
  float remap = map(offset,-1,1,0,2);
 // println(remap);
  strokeWeight(65+remap);
  c = get(mouseX,mouseY);
  stroke(0);
  rect(0+remap,0+remap,width,height);
  noStroke();
  fill(c);
  ellipse(mouseX,mouseY,100,100); 
  noFill();
//fc+=.00001;
}
