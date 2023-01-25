directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

% Question 1 
% i) 
travelFromTo(X,Y) :- directTrain(X,Y). 
travelFromTo(X,Y) :- directTrain(X,Z), travelFromTo(Z,Y). 

%ii)
travelFromTo(X,Y) :- directTrain(Y,X). 
travelFromTo(X,Y) :- directTrain(Z,X), travelFromTo(Y,Z).

% Question 2 
% i) 
% numeral(succ(succ(succ(succ(0))))


% ii) 
double(0,0).
double(succ(X), (succ(succ(Y)))) :- double(X,Y). 


% Question 3
% i) 
line(N) :- foreach(between(1, N, _), write('*')), nl.
star(1) :- line(1).

% ii) 
star(N) :- line(N), S1 is N-1, star(S1).

% iii) 
starA(N) :- S1 is N-1, starA(S1), line(N).




