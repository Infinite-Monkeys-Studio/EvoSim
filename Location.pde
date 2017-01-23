class Location {
  final int scale = 60;
  int worldX;
  int worldY;
  
  Location(int worldX, int worldY) {
    this.worldX = worldX;
    this.worldY = worldY;
  }
  
  Location(Location copy) {
    this.worldX = copy.worldX;
    this.worldY = copy.worldY;
  }
  
  int screenX() {
    return this.worldX * scale;
  }
  
  int screenY() {
    return this.worldY * scale;
  }
  
  @Override
  public boolean equals(Object obj) {
    if(obj == null) return false;
    if(!Location.class.isAssignableFrom(obj.getClass())) return false;
    Location otherL = (Location) obj;
    return this.worldX == otherL.worldX && this.worldY == otherL.worldY;
  }
}