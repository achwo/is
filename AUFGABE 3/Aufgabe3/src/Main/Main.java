package Main;
import processing.core.PApplet;

public class Main extends PApplet{


	  Board board = new Board();
	public void setup() {
	  
	  size(800, 600);
	  board.initField(); 
	}

	public void draw() { 
	  background(80);
	  board.showFields();
	  board.guiText();
	  
	 
	}

	public void mousePressed() {
	  Tile tile = board.getTileForMousePosition();
	  tile.setColor(State.RED);
	  
	}
}

	