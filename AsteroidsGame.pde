SpaceShip bob = new SpaceShip();
Star[]field=new Star[300];

public void setup()
{
  size(300, 300);
    background(0);
     for(int i = 0 ; i < field.length; i++){
  field[i]=new Star();
  }
      for (int i= 0; i<field.length; i++) {
      field[i].show();
    }
}
public void draw()
{
  background(0);
  noStroke();
  noFill();
   for (int i= 0; i<field.length; i++) {
      field[i].show();
    }
    bob.move();
    bob.show();
}
 public void keyPressed()
  {

    if (key=='d') {
      bob.turn(10); //
    }
    if (key=='s') {
      bob.accelerate(-1); // down to deccelerate
    }
    if(key=='a'){
      bob.turn(-10);
     
  }
 
  //if(key=='w'){
  //  bob.turn(270);
  //}
 
  if(key=='l'){
    bob.accelerate(1);
    //bob.accelerate(10.0);
  }
  if (key=='h'){
    bob.hyperspace();
   
  }
  }
