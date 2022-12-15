class Bullet extends Floater {

  Bullet(SpaceShip theShip)
  {
    myCenterX= theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed(); 
    accelerate (6.0);
   
  }
   public double getX() {
      return myCenterX;
    } 
    public double getY() {
      return myCenterY;
    }
    public double getPointDirection() {
      return myPointDirection;
    }
    public double getmyXspeed () {
      return myXspeed;
    }  
    public double getmyYspeed () {
      return myYspeed;
    }

    public void show()
    {
      fill(255,0,0);

      ellipse((float)myCenterX, (float)myCenterY, 2, 2);
    }
    
    
}
