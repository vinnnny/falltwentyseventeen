PImage pup;

class Rain {
  
float x = random(600);
float y = 0;
float yspeed = random(5, 10);
void fall() {
 
 y = y + yspeed;
 yspeed = yspeed + .15;
 image(pup, x, y, 75, 50);;
}
}

int numDogs = 0;
Rain[] puppies = new Rain[300]; // Declare array

void setup() {
 size(600, 600);
 background(230, 150, 180);
 pup = loadImage("puppy.png");
 puppies[0] = new Rain(); // Create first object
}

void draw() {
   background(230, 150, 180);
   
 if (numDogs == puppies.length - 1) exit();
 if (random(20) < 1) {
   puppies[++numDogs] = new Rain(); // Create each object
 }
 if(mousePressed) {
   background(255, random(100, 255), random(255));
 }
 //Loop through array to use objects.
 for (int k = 0; k < numDogs; k++) {
   puppies[k].fall();
 }
 
 
}

 