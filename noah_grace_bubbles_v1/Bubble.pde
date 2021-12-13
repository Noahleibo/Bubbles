class Bubble {
  //member variables
  int mySize, myColor, myX;
  float myY, mySpeed;
  boolean marked;
  void rise() {
    myX += (int)(Math.random()*3)-1;
    myY -= mySpeed;
    if (myY < -100) {
      myY = 500;
    }
  }
  void show() {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  Bubble() { //no argument constructor
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (int)(Math.random()*80)+20;
    mySpeed = mySize/100.0;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    marked = false;
  }
}
