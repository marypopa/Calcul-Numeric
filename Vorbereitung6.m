clear all;
close all;
x=[-1 0 1];
v=[6 1 2];

d = NaN(length(x),length(x)+1);
%Pun pe prima coloana x si pe a doua f(x)
for i=1:length(x)
    d(i,1) = x(i);
    d(i,2) = v(i);
endfor

%Incep sa construiesc
k=1;
for j=3:length(x)+1
    for i=1:length(x)-k
       d(i,j) =(d(i+1,j-1)-d(i,j-1))/(d(i+k,1) - d(i,1));     
    endfor
k = k+1;
endfor
d
n=[zeros(1,length(x)-1),v(1)];
t=1;
for i=1:length(x)-1
    t=poly(x(1:i));
    d(1,i+2).*t
    n=n+[zeros(1,length(x)-length(t)),d(1,i+2).*t];
endfor
p=n


a=-1;
b=1;
f=@(x) (1/(1+x.^3));
n=20;

termen=(b-a)/(2*n);

sume=0;
x1=a;
for k=2:n
    xk=a+k*(b-a)/n;  
    sume = sume+polyval(p,x1)+polyval(p,xk);
    x1=xk;
endfor

disp('TRapexregelsumme');
%%TrapezSummeResultat
termen*sume
