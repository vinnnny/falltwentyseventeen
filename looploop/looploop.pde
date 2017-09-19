
int startx = 300;
int starty = 150;
int startz = 450;
int endx = 0;
int endy = 100;
int endz = 100;

int spacing = 10;

int numberDrawn = 0;
int totalLines = 100;

void setup() {
  size(600,600);
  background(255, 120, 120);
  noStroke();
  fill(20, 30);
  triangle(startx, endx + spacing, starty, endy + spacing, startz, endz + spacing);
  spacing += 10;
}

void draw() {
  background(255, 120, 120);
  noStroke();
fill(20, 30);
triangle(300, 600, 150, 500, 450, 500);
 
 if (numberDrawn < totalLines) {
   fill(230, 30);
   triangle(startx, endx + spacing, starty, endy + spacing, startz, endz + spacing);
   spacing += random (1, 10);
   numberDrawn += 1;
 }
 else {
   spacing = 0;
   numberDrawn = 0;
 }
}