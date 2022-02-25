Chaser chaser;
Balloon[] balloons = new Balloon[50];

public void setup() {
  size(600,600);
  chaser = new Chaser();
  spawnBalloons();
}

public void draw() {
  background(220);
    for (int i = 0; i < balloons.length; i++) {
    balloons[i].draw();
    }
  chaser.move();
  chaser.draw();
  
}

public void spawnBalloons() {
for (int i = 0; i < balloons.length; i++) {
    balloons[i] = new Balloon();
  }
}
