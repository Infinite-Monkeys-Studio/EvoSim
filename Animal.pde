class Animal {
  int xLoc; //TODO make these work on some kind of world co-ords
  int yLoc;
  
  Animal(int xLoc, int yLoc) {
    this.xLoc = xLoc;
    this.yLoc = yLoc;
  }
  
  void draw() {
    fill(175,60,20);
    ellipse(xLoc, yLoc, 40,40);
  }
}