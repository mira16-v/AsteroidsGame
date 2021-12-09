ArrayList <Asteroid> debris = new ArrayList <Asteroid>();

//Asteroid [] sue;
Star [] bob;
Spaceship [] space;
public void setup()
{
  //frameRate(5);
  size(500, 500);
  background(0);
  
  for(int i = 0; i < 10; i++){
    debris.add(new Asteroid());
  }
  //sue = new Asteroid[10];
  //for(int i =0; i < 10; i++){
  //sue[i] = new Asteroid();
  //}
  space = new Spaceship[6];
  for(int i = 0; i < 6; i++){
  space[i] = new Spaceship();
  }
    for(int i = 0; i < space.length; i++){
    if(i/1 == 1){
      space[i].setCenterX(250);
      space[i].setCenterY(230);
      space[i].move();
    } else if(i/1 == 2){
      space[i].setCenterX(250);
      space[i].setCenterY(270);
      space[i].move();
    }else if(i/1 == 3){
      space[i].setCenterX(210);
      space[i].setCenterY(250);
      space[i].move();
    } else if(i/1 == 4){
      space[i].setCenterX(270);
      space[i].setCenterY(250);
      space[i].move();
    }else if(i/1 == 5){
      space[i].setCenterX(210);
      space[i].setCenterY(220);
      space[i].move();
    }else if(i/1 == 6){
      space[i].setCenterX(210);
      space[i].setCenterY(280);
      space[i].move();
    }
    
  }
  
  bob = new Star[1000];
  for(int i = 0; i < 1000; i++){
  bob[i] = new Star();
  }
}
public void draw()
{
  background(0);
  
  for(int i = 0; i < debris.size(); i++){
    Asteroid rock = debris.get(i);
    rock.move();
    rock.show();
  }
    
  //for(int i = 0; i < debris.size(); i++){
  //  debris.get(i).show();
  //  debris.get(i).move();
  //    for(int y = 0; y < space.length; y++){
  //      float d = dist((float)space[y].getX(), (float)space[y].getY(), (float)debris.get(i).getX(), (float)debris.get(i).getY());
  //      if(d < 10){
  //        debris.remove(i);
  //      }
  //    }
      
  //}
  for(int y = 0; y < space.length; y++){
    for(int i = 0; i < debris.size(); i++){
      debris.get(i).show();
      debris.get(i).move();
      float d = dist((float)space[y].getX(), (float)space[y].getY(), (float)debris.get(i).getX(), (float)debris.get(i).getY());
        if(d < 10){
          debris.remove(i);
        }
    }
  }
  


 
  for(int i = 0; i < bob.length; i++){
  bob[i].show();
  }

 for(int i = 0; i < space.length; i++){
        space[i].show();
      space[i].move();
 }
 
  if(keyPressed){
  if(key == 'a'){
  for(int i = 0; i < space.length; i++){
  space[i].setPointDirection(-180);
  space[i].setSpeedX(-3);
  }
   
  }
  if(key == 'd'){
  for(int i = 0; i < space.length; i++){
  space[i].setPointDirection(0);
  space[i].setSpeedX(3);
  }
  }
  if(key == 'w'){
  for(int i = 0; i < space.length; i++){
  space[i].setPointDirection(-90);
  space[i].setSpeedY(-3);
  space[i].setSpeedX(0);
  }
  }
  if(key == 's'){
  for(int i = 0; i < space.length; i++){
  space[i].setPointDirection(90);
  space[i].setSpeedY(3);
  space[i].setSpeedX(0);
  }
  }
  if(key == ' '){
  for(int i = 0; i < space.length; i++){
  space[i].accelerate(1.5);
  }
  }
  if(key == 'h'){
  for(int i = 0; i < space.length; i++){
  space[i].setCenterX((int)(Math.random()*500));
  space[i].setCenterY((int)(Math.random()*500));
  space[i].setSpeedX(0);
  space[i].setSpeedY(0);
  }
  }
  }
  

  

}
