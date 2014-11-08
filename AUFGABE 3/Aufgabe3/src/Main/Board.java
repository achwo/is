package Main;
import processing.core.PApplet;
public class Board extends PApplet{

  int offset = 20;
  int fieldSize = 5;
  Tile[][] tiles = new Tile[fieldSize][fieldSize];
  
  public void initField(){
    for(int x=0; x<fieldSize; x++){
      for(int y=0; y<fieldSize; y++){
        
        tiles[x][y] = new Tile(x,y, this);
        
        }
    }
  }
  
  int getOffset(){
    return offset;
  }
  
  public Tile getTileForMousePosition() {
    int tileX = (mouseX - offset) / Tile.sideLength;
    int tileY = (mouseY - offset) / Tile.sideLength;
    return tiles[tileX][tileY]; 
  }
  
  
  public void guiText(){
    fill(255);
    String spieler1 = "Spieler 1: " + getNumberOfRed();
    String spieler2 = "Spieler 2: ";
    textSize(32);
    text(spieler1, width/2, 40);
    text(spieler2, width/2, 80);
  }

  
  public void showFields(){
    for(int x=0; x<fieldSize; x++){
      for(int y=0; y<fieldSize; y++){
        tiles[x][y].paint();
      }
    }
  }
  
  public int getNumberOfRed(){
    int count = 0;
    for(int x=0; x<fieldSize; x++){
      for(int y=0; y<fieldSize; y++){
        if(tiles[x][y].getColor()==State.RED){
          count++;  
        }
      }
    }
    return count;
  }

}
