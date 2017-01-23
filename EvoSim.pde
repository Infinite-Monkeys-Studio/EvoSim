//This is the one and only forest.
//  once it is created it is never removed, only changed.
Forest forest; 

int windowX;
int windowY;

boolean[] downKeys;

Animal a; //TODO just for testing


void setup() {
  // init app settings
  size(1200,720);
  randomSeed(1);
  
  // init global variables
  forest = new Forest();
  forest.generate_tiles();
  
  windowX = 0;
  windowY = 0;
  
  downKeys = new boolean[255];
  
  //TODO spawn test creature. just for testing
  int xSpawn = (int) random(forest.xDim); //TODO just for testing
  int ySpawn = (int) random(forest.yDim); //TODO just for testing
  a = new Animal(new Location(xSpawn, ySpawn)); //TODO just for testing
}

void draw(){
  userControl();
  
  background(255);
  translate(windowX, windowY);
  forest.draw();
  a.draw(); //TODO just for testing
}

void keyPressed() {
  if(key < 256) downKeys[key] = true;
}

void keyReleased() {
  if(key < 256) downKeys[key] = false;
}

void userControl() {
  if(downKeys[119] || downKeys[87]) { //w and W key
    windowY += 10;
  }
  if(downKeys[115] || downKeys[83]) { //s
    windowY -= 10;
  }
  if(downKeys[65] || downKeys[97]) { //a
    windowX += 10;  
  }
  if(downKeys[100] || downKeys[68]) { //d
    windowX -= 10;
  }
  
  
  // just for learning the key code without an ascii chart
  for(int i = 0; i < downKeys.length; i++) {
    if(downKeys[i]) println(i);
  }
}
  