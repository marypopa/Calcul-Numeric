clear all;
X=[0 0.5 1];
f=@(x) (sin(pi*x));
d = NaN(length(X),length(X)+1);
%Pun pe prima coloana x si pe a doua f(x)
for i=1:length(X)
    d(i,1) = X(i);
    d(i,2) = f(X(i));
endfor

%Incep sa construiesc
k=1;
for j=3:length(X)+1
    for i=1:length(X)-k
       d(i,j) =(d(i+1,j-1)-d(i,j-1))/(d(i+k,1) - d(i,1));     
    endfor
k = k+1;
endfor
d
