Bacteria[] bob = new Bacteria[25];
void setup() {
  size(400, 400);
  for (int i = 0; i < bob.length; i++) 
    bob [i] = new Bacteria();
}
void draw() {
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}

class Bacteria {
  int myX, myY, myColor;
  Bacteria() {
    myX = 200;
    myY = 200;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void show () {
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
  void move () {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
}
