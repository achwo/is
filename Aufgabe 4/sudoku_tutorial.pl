:- use_module(library(clpfd)).

sudoku1 :-  
  X = [[6,_,_,7,_,_,5,_,_],                                   
       [_,2,8,_,_,_,_,_,_],                                   
       [_,_,_,6,4,_,3,_,_],                                   
       [7,4,_,_,_,_,_,2,_],                                   
       [_,_,1,_,_,_,8,_,_],                                   
       [_,5,_,_,_,_,_,3,7],                                  
       [_,_,3,_,7,6,_,_,_],                                  
       [_,_,_,_,_,_,1,9,_],                                   
       [_,_,4,_,_,5,_,_,8]],
  time(sudoku(X)),
  maplist(writeln, X).

sudoku(Rows) :-  
  append(Rows, Values),
  Values ins 1..9,
  maplist(all_distinct, Rows),
  transpose(Rows, Columns),     
  maplist(all_distinct, Columns),     
  Rows = [A,B,C,D,E,F,G,H,I],     
  blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),     
  maplist(label, Rows).      
 
blocks([], [], []).       
blocks([A,B,C|Block1], [D,E,F|Block2], [G,H,I|Block3]) :-     
  all_distinct([A,B,C,D,E,F,G,H,I]),      
  blocks(Block1, Block2, Block3).

  
