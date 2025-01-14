ArrayList <Asteroid> debris = new ArrayList <Asteroid>(); //asteroid arraylist 
Star [] bob; // star background
Spaceship [] space; //spaceship fleet array
public void setup()
{
  //frameRate(5);
  size(500, 500);
  background(0);

  for (int i = 0; i < 30; i++) {
    debris.add(new Asteroid());
  } //initializing asteroids

  space = new Spaceship[6];
  for (int i = 0; i < 6; i++) {
    space[i] = new Spaceship();
  } //initializing spaceship fleet

  for (int i = 0; i < space.length; i++) {
    if (i == 0) {
      space[i].setCenterX(240);
      space[i].setCenterY(235);
      space[i].move();
    } else if (i == 1) {
      space[i].setCenterX(240);
      space[i].setCenterY(265);
      space[i].move();
    } else if (i == 2) {
      space[i].setCenterX(210);
      space[i].setCenterY(250);
      space[i].move();
    } else if (i == 3) {
      space[i].setCenterX(270);
      space[i].setCenterY(250);
      space[i].move();
    } else if (i == 4) {
      space[i].setCenterX(210);
      space[i].setCenterY(220);
      space[i].move();
    } else if (i == 5) {
      space[i].setCenterX(210);
      space[i].setCenterY(280);
      space[i].move();
    }
  } //positioning and moving fleet ships

  bob = new Star[1000];
  for (int i = 0; i < 1000; i++) {
    bob[i] = new Star();
  }//initializing background
}// end setup

public void draw()
{
  background(0);

  for (int i = 0; i < debris.size(); i++) {
    Asteroid rock = debris.get(i);
    rock.move();
    rock.show();
  } //moving asteroids

  for (int y = 0; y < space.length; y++) {
    for (int i = 0; i < debris.size(); i++) {
      debris.get(i).show();
      debris.get(i).move();
      float d = dist((float)space[y].getX(), (float)space[y].getY(), (float)debris.get(i).getX(), (float)debris.get(i).getY());
      if (d < 10) {
        debris.remove(i);
      }
    }
  } //collision

  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
  } //showing stars

  for (int i = 0; i < space.length; i++) {
    space[i].show();
    space[i].move();
  }//showing/moving fleet

  if (keyPressed) {

    if (key == 'a') {
      for (int i = 0; i < space.length; i++) {
        space[i].setPointDirection(-180);
        space[i].setSpeedX(-3);
      }
    }
    if (key == 'd') {
      for (int i = 0; i < space.length; i++) {
        space[i].setPointDirection(0);
        space[i].setSpeedX(3);
      }
    }
    if (key == 'w') {
      for (int i = 0; i < space.length; i++) {
        space[i].setPointDirection(-90);
        space[i].setSpeedY(-3);
        space[i].setSpeedX(0);
      }
    }
    if (key == 's') {
      for (int i = 0; i < space.length; i++) {
        space[i].setPointDirection(90);
        space[i].setSpeedY(3);
        space[i].setSpeedX(0);
      }
    }
    if (key == ' ') {
      for (int i = 0; i < space.length; i++) {
        space[i].accelerate(1.5);
      }
    }
    if (key == 'h') {
      int x = (int)(Math.random()*500);
      int y = (int)(Math.random()*500);
      for (int i = 0; i < space.length; i++) {
        if (i == 0) {
          space[i].setCenterX(x-30);
          space[i].setCenterY(y-15);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        } else if (i == 1) {
          space[i].setCenterX(x-30);
          space[i].setCenterY(y+15);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        } else if (i == 2) {
          space[i].setCenterX(x-60);
          space[i].setCenterY(y);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        } else if (i == 3) {
          space[i].setCenterX(x);
          space[i].setCenterY(y);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        } else if (i == 4) {
          space[i].setCenterX(x-60);
          space[i].setCenterY(y-30);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        } else if (i == 5) {
          space[i].setCenterX(x-60);
          space[i].setCenterY(y+30);
          space[i].setSpeedX(0);
          space[i].setSpeedY(0);
        }
      }
    }//key controls
  }//end draw()
}
