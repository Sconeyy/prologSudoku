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
d(3).
d(4).

% This predicate takes 4 Variables and confirms that each one is a digit (1-4)
% then confirms that they are all different.
% Note: It is important that the check for them being digits comes first. (Why?)
% You need to finish this function.
check(A, B, C, D) :-
    d(A),
    d(B),
    d(C),
    d(D),
    A \= B,
    A \= C,
    A \= D,
    B \= C,
    B \= D,
    C \= D.

% This is the main part.
sudoku(Puzzle, Solution) :-
    Solution = Puzzle,
    Puzzle = [
        S11, S12, S13, S14,
        S21, S22, S23, S24,
        S31, S32, S33, S34,
        S41, S42, S43, S44
    ],
    % Check rows
    check(S11, S12, S13, S14),
    check(S21, S22, S23, S24),
    check(S31, S32, S33, S34),
    check(S41, S42, S43, S44),
    % Check columns
    check(S11, S21, S31, S41),
    check(S12, S22, S32, S42),
    check(S13, S23, S33, S43),
    check(S14, S24, S34, S44),
    % Check 2x2 subgrids
    check(S11, S12, S21, S22),
    check(S13, S14, S23, S24),
    check(S31, S32, S41, S42),
    check(S33, S34, S43, S44).
