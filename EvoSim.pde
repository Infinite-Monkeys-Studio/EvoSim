//This is the one and only forest.
//  once it is created it is never removed, only changed.
Forest forest; 
Animal a; //TODO just for testing


void setup() {
  size(1200,720);
  forest = new Forest();
  forest.generate_tiles();
  
  //spawn test creature
  int xSpawn = ((int )(Math.random() * 20 + 1)*forest.scale) + (forest.scale/2); //TODO just for testing
  int ySpawn = ((int )(Math.random() * 12 + 1)*forest.scale) + (forest.scale/2); //TODO just for testing
  a = new Animal(xSpawn, ySpawn); //TODO just for testing
}

void draw(){
  background(255);
  forest.draw();
  a.draw(); //TODO just for testing
}
  