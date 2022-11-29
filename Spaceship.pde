class SpaceShip extends Floater{
    public SpaceShip()
  {
    corners = 5; //drawing corners
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] =  3;
    yCorners[0] =  3;
    xCorners[1] = -4;
    yCorners[1] = 6;
    xCorners[2] = -4;
    yCorners[2] = -4;
    xCorners[3] =  8;
    yCorners[3] = -4;
    xCorners[4] = 0;
    yCorners[4] = 4;
    myColor = 255;
    myCenterX=0;
    myCenterY=0;
    myXspeed=0;
    myYspeed=0;
    myPointDirection=0;
   
   
   
  }
  //  public void pointDirection(double d)
  //{

  //  myPointDirection=d;
   
  //}
  //  public void setXspeed(double x){
 
  //  myXspeed = x;
 
  //}
 
  //public void accelerate (double l){
  //myXspeed=l;
  //myYspeed=l;
  //}
  public void hyperspace (){
    myXspeed=1;
    myYspeed=1;
    myCenterX=(int)(Math.random()*300);
    myCenterY=(int)(Math.random()*300);
    myPointDirection=(int)(Math.random()*360);
  }
  }
