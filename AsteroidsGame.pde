SpaceShip bob = new SpaceShip();
Star[]field=new Star[300];
ArrayList <Asteroids> list ;
ArrayList <Bullet> theList; 
Bullet sue;


public void setup()
{
  size(300, 300);
  background(0);
  for (int i = 0; i < field.length; i++) {
    field[i]=new Star();
  }
  for (int i= 0; i<field.length; i++) {
    field[i].show();
  }
  theList= new ArrayList <Bullet> ();
  list=new ArrayList <Asteroids>();
  for (int i = 0; i<10; i++) {
    list.add(new Asteroids());
  }
  sue = new Bullet (bob);
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
  for (int i = 0; i<theList.size(); i++) {

    theList.get(i).show();
    theList.get(i).move();
  }
  for (int i = 0; i<theList.size(); i++) {
    for (int j = 0; j<list.size(); j++) {

      float d = dist((float)theList.get(i).getX(), (float)theList.get(i).getY(), (float)list.get(j).getX(), (float)list.get(j).getY());
      if(d<10){
        theList.remove(i);
        list.remove(j);
        break;
      }
    }
  }
  for (int i = 0; i<list.size(); i++) {
    Asteroids rock = list.get(i);
    rock.move();
    rock.show();
    float d = dist((float)rock.getX(), (float)rock.getY(), (float)bob.getX(), (float)bob.getY());
    if (d < 10) {
      list.remove(i);
    }
  }
}
public void keyPressed()
{

  if (key=='d') {
    bob.turn(10); //
  }
  if (key=='s') {
    bob.accelerate(-1); // down to deccelerate
  }
  if (key=='a') {
    bob.turn(-10);
  }

  //if(key=='w'){
  //  bob.turn(270);
  //}

  if (key=='l') {
    bob.accelerate(1);
    //bob.accelerate(10.0);
  }
  if (key=='h') {
    bob.hyperspace();
  }
  if (key == ' ') {

    theList.add(new Bullet (bob));
    //sue = new Bullet (bob);
  }
}

