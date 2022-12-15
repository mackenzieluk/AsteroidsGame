class Asteroids extends Floater {
  protected double rotSpeed;
  Asteroids()
  {
   
    
    corners = 6;
    myCenterX=(int)(Math.random()*300)+10;
    myCenterY=(int)(Math.random()*300)+10;
    xCorners = new int []{-1,-2,-3,7,9,11};
    yCorners = new int []{-11,5,-3,3,6,5};
    rotSpeed = (int)(Math.random()*5)-10;
    myColor = (255);
    myYspeed = (int)(Math.random()*5);
    myXspeed = (int)(Math.random()*5);
    
   
   
  }
  
  public void move ()
  {
    turn(rotSpeed);
    super.move();
  }
  
  public double getX() {return myCenterX;} 
  public double getY() {return myCenterY;}
  public double getPointDirection() {return myPointDirection;}
  
}
