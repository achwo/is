package Main;
import processing.core.PApplet;
public class Tile extends PApplet {
	  
	  public static final int sideLength = 40;
	  private int posx, posy;
	  private State actualColor;
	  private Board board;   
	  
	  Tile(int posx, int posy, Board board){
	    this.board = board;
	    
	    this.posx = board.getOffset() + posx * this.sideLength;
	    this.posy = board.getOffset() + posy * this.sideLength;
	    
	    paint();
	    
	  }
	  
	  void paint() {
	    fill(255);
	    
	    if(actualColor==State.RED){
	      fill(255,0,0);
	    }
	    
	    if(actualColor==State.WHITE){
	      fill(255);
	    }
	    
	    rect(posx, posy, sideLength, sideLength);
	  }
	  
	  int getXPosition(){
	    return this.posx;
	  }
	  
	  int getYPosition(){
	    return this.posy;
	  }
	  
	  
	  void setColor(State fieldColor){
	    if(fieldColor == State.WHITE){
	      actualColor = State.WHITE;
	    }
	   
	   else if(fieldColor == State.BLUE){
	      fill(123);
	      paint();
	      actualColor = State.BLUE;
	    }
	    
	    else if(fieldColor == State.RED){
	      actualColor = State.RED;
	    }
	    
	  }
	  
	  State getColor(){
	    return actualColor;
	  }


	  
	}

	  
