x = [1 1 2 2];
v = [-2 -2 13 13];
f=[4 32]; 
d = NaN(length(x),length(x)+1);

for i=1:length(x)
    d(i,1) = x(i);
    d(i,2) = v(i);
endfor

h=1;
for i=1:length(x)-1
    if mod(i,2)==1
        d(i,3)=f(h);
        h=h+1;
    else
        d(i,3)=(d(i+1,2)-d(i,2))/(d(i+1,1) - d(i,1));
    endif
endfor

d
k=2;
for j=4:length(x)+1
d
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
n

