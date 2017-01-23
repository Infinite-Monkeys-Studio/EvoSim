class Animal {
  Location loc;
  
  Animal(Location loc) {
    this.loc = loc;
  }
  
  void draw() {
    pushMatrix();
    translate(loc.screenX(), loc.screenY());
    fill(175,60,20);
    ellipse(30, 30, 40,40);
    popMatrix();
  }
}