  int birdX = 150;
  int birdY = 50;
  int birdYVelocity = 0;
  int gravity = 1;
  int upperPipeHeight = (int) random(-600, -200);
  int upperPipeX = 800;
  int upperPipeY = -200;
  int lowerPipeX = 800;
  int lowerPipeY = 700;
  int score = 0;
  boolean dead = false;
  
void setup() {
  size(1000, 800);
  
  
}

void draw() {

  
  
  birdY = birdY + birdYVelocity;
  birdYVelocity = birdYVelocity + gravity;
  background(244, 185, 66);
  
  fill(255,0,0);
  stroke(0,0,0);
  ellipse(birdX, birdY, 50, 50);
  
  
  upperPipeX = upperPipeX - 5;
  
  fill(31,242,87);
  stroke(0,0,0);
  rect(upperPipeX, upperPipeY, 60, 700);
  
  lowerPipeX = lowerPipeX - 5;
  
  fill(31,242,87);
  stroke(0,0,0);
  rect(lowerPipeX,lowerPipeY, 60, 700);

  dead = intersectsPipes();
  
  fill(150, 75, 18);
  rect(0, 770, width, 30);
  
  fill(0,0,0);
  text("Score:" , 20, 20);
  text(score, 50, 20);
  
  
  if(birdY > 770) {
    stop();
  }
  
  if(dead == true) {
    stop();
  }
  
  teleportPipes();
}

void mousePressed() {
  if(mousePressed) {
    birdYVelocity = -15;
  }
}

void teleportPipes() {
  if(upperPipeX < 0) {
    upperPipeX = 1000;
    lowerPipeX = 1000;
    upperPipeHeight = (int) random(-600, 0);
    lowerPipeY = upperPipeHeight + 900;
    upperPipeY = upperPipeHeight;
    score = score + 1;
  }
}

boolean intersectsPipes() { 
     if ((birdY < (upperPipeY + 700)) && (birdX > upperPipeX) && (birdX < (upperPipeX+60))){
          return true; }
     else if ((birdY > (upperPipeY + 900)) && (birdX > lowerPipeX) && (birdX < (lowerPipeX+60))) {
          return true; }
     else { return false; }
  }