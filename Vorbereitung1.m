% Se da f(0), f`(0), f``(0), f(1)
x=[0 0 0 1]
u=[2 2 2 -1]
f=[1]
ff=[4]

%Definesc matricea pentru dividierte differenzen
d = NaN(length(x),length(x)+1);

%Pun pe prima coloana valorile lui x, si pe a 2 coloana valorile lui f(x)

for i=1:length(x)
    d(i,1)=x(i);
    d(i,2)=u(i);
endfor

%Incep sa completez DD 1.,2,3 Ordnung

k=1;
s=1;
for j=3:length(x)+1
    for i=1:length(x)-k
        if(x(i)==x(i+1) && j==3)
                d(i,j)=f(1);
        else
            if(i==1 && j==4)
                d(i,j) = ff(1);
            else
             d(i,j) =(d(i+1,j-1)-d(i,j-1))/(d(i+s,1) - d(i,1));
            endif 
    endif
    endfor
    k=k+1;
    s=s+1;
endfor
d
% Construiesc polinomul
n=[zeros(1,length(x)-1),u(1)]
t=1;
for i=1:length(x)-1
    t=poly(x(1:i));
    d(1,i+2).*t
    n=n+[zeros(1,length(x)-length(t)),d(1,i+2).*t];
endfor
n
