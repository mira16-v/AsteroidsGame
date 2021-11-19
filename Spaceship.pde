class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 4;
  xCorners = new int[] {20, -10, -5, -10};
  yCorners = new int [] {0, 10, 0, -10};
  myColor = 255;
  myCenterX = 250;
  myCenterY = 250;
  myXspeed = 0;
  myYspeed = 0;
  myPointDirection = 0;
  }
  public void setCenterX(int n){
  myCenterX = n;
  }
  public void setCenterY(int m){
  myCenterY = m;
  }
  public void setSpeedX(double b){
  myXspeed = b;
  }
  public void setSpeedY(double d){
  myYspeed = d;
  }
  public void setPointDirection(double d){
  myPointDirection = d;
  }
}
