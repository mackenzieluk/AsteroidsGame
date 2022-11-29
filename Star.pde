class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor, mySize;

  public Star()
  {
    myX=(int)(Math.random()*300);
    myY=(int)(Math.random()*300);
    myColor=(int)(Math.random()*255);
    mySize = (int)(Math.random()*7);
  }
  //public void setup()
  //{
  //  size(300, 300);
  //  background(0);
  //  for (int i= 0; i<field.length; i++) {
  //    field[i]= new Star; 
  //    field[i].show();
  //  }
  //}
  public void show()
  {
    fill(myColor, myColor, myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
