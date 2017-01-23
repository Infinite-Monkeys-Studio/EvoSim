class Forest {
  int scale = 60; //size of each of the tiles on the screen in pxs.  This is the number used in ALL convertion from screen to world
  int xDim = 20; //number of tiles in x direction
  int yDim = 12; //number of tiles in y direction
  
  int tiles[][]; //stores food amounts
  
  Forest (int xDim,int yDim, int scale) {
    this.scale = scale;
    this.xDim = xDim;
    this.yDim = yDim;
    tiles = new int[xDim][yDim];
  }
  
  Forest () {
    tiles = new int[xDim][yDim];
  }
  
  void draw() {
    pushMatrix();
    
    for (int x = 0; x < xDim; x++){
      for (int y = 0; y < yDim; y++){
        fill(100+tiles[x][y], 120, 0);
        rect(x * scale, y * scale, scale, scale);
      }
    }
    
    popMatrix();
  }
  
  //terrain generation
  int[][] generate_tiles() {
    for (int x = 0; x < xDim; x++){
      for (int y = 0; y < yDim; y++){
        tiles[x][y] = (int)(Math.random() * 50 + 1);
      }
    }
    
    return tiles;
  }
}