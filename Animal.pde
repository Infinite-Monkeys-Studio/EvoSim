class Animal {
  int x; //TODO make these work on some kind of world co-ords
  int y;
  
  Animal(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void draw() {
    fill(175,60,20);
    ellipse(this.x, this.y, 40,40);
  }
}