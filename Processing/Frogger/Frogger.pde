int hopDistance;
int frogX = 200;
int frogY = 380;
Car car1;
Car car2;
Car car3;
Car car4;
Car car5;

class Car {
  private int carX;
  private int carY;
  private int carSize;
  private int carSpeed;
  
  public Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
    
  }
  void move(int carSpeed) {
    this.carX = this.carX + carSpeed;
    if(this.carX > 400) {
      this.carX = 0;
    }
  }
  
  void display() {
     fill(0,255,0);
     rect(carX , carY, carSize, 40);
  }
  
}

void setup() {
  size(400, 400);
  car1 = new Car(0,40,80,10);
  car2 = new Car(0, 110,80,10);
  car3 = new Car(0, 170,80,10);
  car4 = new Car(0,240,80,10);
  car5 = new Car(0,310,80,10);
}
void draw() {
  background(12, 200, 40);
  fill(50, 255, 50);
  ellipse(frogX, frogY, 20, 15);
  
  
  car1.display();
  car1.move(1);
  car2.display();
  car2.move(2);
  car3.display();
  car3.move(3);
  car4.display();
  car4.move(2);
  car5.display();
  car5.move(3);
  
  if(frogX > 400){
    frogX = frogX - 10;
  }
  if(frogX < 0){
    frogX = frogX + 10;
  }
  if(frogY > 400){
    frogY = frogY - 10;
  }
  if(frogY < 0){
    frogY = frogY + 10;
  }
  
  
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  frogY = frogY - 10;
            }
            else if(keyCode == DOWN)
            {
                  frogY = frogY + 10;
            }
            else if(keyCode == RIGHT)
            {
                  frogX = frogX + 10;
            }
            else if(keyCode == LEFT)
            {
                  frogX = frogX - 10;
            }
      }
}