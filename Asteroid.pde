class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[] {-11, (int)(Math.random()*7)+5, (int)(Math.random()*13)+5, 6, -11, (int)(Math.random()*-15)-5};
    yCorners = new int [] {-8, -8, 0, 10, 8, 0};
    myColor = color(193, 160, 68);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (Math.random()*1);
    myYspeed = (Math.random()*1);
    myPointDirection = (Math.random()*360);
    rotSpeed = 1;
  }
  public double getX(){
    return myCenterX;
  }
    public double getY(){
    return myCenterY;
  }
  
  public void setSpeedX(double b){
  myXspeed = b;
  }
  public void setSpeedY(double d){
  myYspeed = d;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}
