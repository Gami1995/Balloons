public class Balloon {
  public PVector pos, vel, acc;
  public int size;
  public float MAX_SPEED = 5.0;
  
  public Balloon() {
    size = (int) random(3,15);
    float x = random(width);
    float y = random(height);
    pos = new PVector(x,y);
    vel = PVector.random2D().mult(MAX_SPEED);
    acc = PVector.random2D().mult(MAX_SPEED * 0.1);
  }
  
  public void move() {
    acc = PVector.random2D().mult(MAX_SPEED * 0.1);
    vel.add(acc);
    pos.add(vel); 
  }
 
  public void draw() {
    fill(255,0,0);
    circle(pos.x,pos.y,size);
  }
}
