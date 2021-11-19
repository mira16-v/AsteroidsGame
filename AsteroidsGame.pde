Spaceship space;
Star [] bob;
public void setup()
{
  size(500, 500);
  background(0);
  space = new Spaceship();
  bob = new Star[1000];
  for(int i = 0; i < 1000; i++){
  bob[i] = new Star();
  }
}
public void draw()
{
  background(0);
  space.move();
  space.show();
 
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  }
  if(keyPressed){
  if(key == 'a'){
    space.setPointDirection(-180);
    space.setSpeedX(-5);
   
  }
  if(key == 'd'){
    space.setPointDirection(0);
    space.setSpeedX(5);
  }
  if(key == 'w'){
    space.setPointDirection(-90);
    space.setSpeedY(-5);
    space.setSpeedX(0);
  }
  if(key == 's'){
    space.setPointDirection(90);
    space.setSpeedY(5);
    space.setSpeedX(0);
  }
  if(key == ' '){
    space.accelerate(1.5);
  }
  if(key == 'h'){
    space.setCenterX((int)(Math.random()*500));
    space.setCenterY((int)(Math.random()*500));
    space.setSpeedX(0);
    space.setSpeedY(0);
  }
  }

}
