# HW Prolog - 4X4 Sudoku solver
Your mission is to write a Prolog program to solve the sudoku puzzle.
The input will look like this:
````c
sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_], Sol).

The output will look like this:
Sol = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2]

Think of it as a 4X4 Sudoku puzzle:
Capture.PNG

Each row, each column, and each 2X2 subgrid must contain each of the digits 1,2,3 and 4 with no repeated digit in that set.
Given that you know the input, you know that you must have a rule like:
sudoku(Puzzle, Solution) :-

Here is a suggested starting point for your code (Comment lines start with %):
Note: I recommend using g-prolog because swi-prolog does not display the solution all the way.
Note: not(A=B) operator in swi-prolog must be written as A\==B or A=\=B in g-prolog.
% Compile: gplc sudoku.pl 
%    Run: ./sudoku
%    sudoku([_,_,2,3, _,_,_,_, _,_,_,_, 3,4,_,_], Sol).
% OR
% gprolog
% consult(sudoku).
% sudoku([_,_,2,3, _,_,_,_, _,_,_,_, 3,4,_,_], Sol).


% Our puzzle accepts the digits 1-4, so we have to tell the program what an
% acceptable digit is.
% The first 2 are done for you.
d(1).
d(2).
% hmmmm.... what other digits are there between 1 and 4?


%This predicate takes 4 Variables and confirms that each one is a digit (1-4)
%then confirm that they are all different.
%Note: It is important that the check for them being digits comes first. (Why?)
%You need to finish this function.
check(A,B,C,D):-



    

% This is the main part.
sudoku(Puzzle, Solution) :-
                  Solution = Puzzle,
                  Puzzle = [
                     S11,S12,S13,S14,
                     S21,S22,S23,S24,
                     S31,S32,S33,S34,
                     S41,S42,S43,S44
                  ],
                  check(S11,S12,S13,S14),
                  check(S21,S22,S23,S24),
% hmmm... We have checked the first two rows. What else do we need to check?
% Some more code is needed here.

EC (15 pts)
Rewrite the program that displayed the solution in the form
 Sol = [4, 1, 2, 3,
        2, 3, 4, 1,
        1, 2, 3, 4,
        3, 4, 1, 2]
The input will look like this:
sudoku([_,_,2,3,_,_,_,_,_,_,_,_,3,4,_,_]).
Submission
Upload the file sudoku.pl with your solution and a screenshot of the program run.
