class Tile {
  int food;
  int tile_x;
  int tile_y;
  Tile(int food_gen, int temp_tile_x,int temp_tile_y) {
    food = food_gen;
    tile_x = temp_tile_x;
    tile_y = temp_tile_y;
    fill(100+food_gen,120,0);
    rect(tile_x,tile_y,60,60);
  }
}

class Animal {
  int x;
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

Tile myTile;
int stepSize=60; //spacing between tiles
int xDim = 20; //number of tiles in x direction
int yDim = 12; //number of tiles in y direction
int food_gen;  //amount of food in one space
int[][] food_coords = new int[xDim][yDim]; //stores food amounts
Animal a;

void setup() {
    size(1200,720); 
   
    //terrain generation
    for (int i = 0; i < xDim; i++){
      for (int j = 0; j < yDim; j++){
        food_gen = (int )(Math.random() * 50 + 1);
        food_coords[i][j] = food_gen;
      }
    }
    
    //creature spawn
    int xSpawn = ((int )(Math.random() * xDim + 1)*stepSize) + (stepSize/2);
    int ySpawn = ((int )(Math.random() * yDim + 1)*stepSize) + (stepSize/2);
    a = new Animal(xSpawn, ySpawn);
    
    textSize(32);
    fill(0);
}

void draw(){
  background(255);
  for (int i=0; i<xDim; i++){
    for (int j=0; j<yDim; j++){
      int food_gen = food_coords[i][j];
      fill(100+food_gen,120,0);
      rect(i*stepSize,j*stepSize,60,60);
      //myTile = new tile(food_gen,i*stepSize,j*stepSize);
    }
  }
  a.draw();
}
  