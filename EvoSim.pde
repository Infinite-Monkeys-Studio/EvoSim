Animal a;
Forest forest;

void setup() {
  size(1200,720);
  forest = new Forest();
  forest.generate_tiles();
  //creature spawn
  int xSpawn = ((int )(Math.random() * 20 + 1)*forest.scale) + (forest.scale/2);
  int ySpawn = ((int )(Math.random() * 12 + 1)*forest.scale) + (forest.scale/2);
  a = new Animal(xSpawn, ySpawn);
}

void draw(){
  background(255);
  forest.draw();
  a.draw();
}
  