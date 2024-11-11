
%tp2
%exo01


include([X|_], X).
include([_|Tail], X) :-
    include(Tail, X).
%exo02

head([X|_],X).

%exo03


last([X],X).

last([],null).

last([_|T],X) :-
    last(T,X).
%exo04

second_to_last([X,_],X).


second_to_last([_|T]) :-
    second_to_last(T).

%exo05

del_k(X,[X|T],1,T).
del_k(X,[R|T],L,[R|H]):-
    L > 1,
    L1 is L-1,
    del_k(X,T,L1,H).


%exo06

list_length([],0).
list_length([_|T],N):-

    list_length(T,N1),
    N is N1 +1.
%exo07


odd([_]).
odd([_|T]):-
    even(T).
even([]).
even([_|T]):-
    odd(T).

%exo08


concat([],L,L).
concat([R|T],L,[R|H]):-
    concat(T,L,H).
/*
palindrom([]).
palindrom([_]).
palindrom()
*/
