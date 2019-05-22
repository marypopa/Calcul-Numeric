x = [1 1 1 2];
v = [0 0 0 -31];
f=[-5 -80];
ff = [-20,-160];
d = NaN(length(x),length(x)+1);

for i=1:length(x)
    d(i,1) = x(i);
    d(i,2) = v(i);
endfor

h=1;
for i=1:length(x)-1
    if mod(i,3)==0
         d(i,3)=(d(i+1,2)-d(i,2))/(d(i+1,1) - d(i,1)); 
         h=h+1;
    else
       d(i,3)= f(h);
       
    endif
endfor
h=1;
for i=1:length(x)-2
    if mod(i,3)==1
         d(i,4)= 0.5*ff(h);
       h=h+1;
    else
         d(i,4)=(d(i+1,3)-d(i,3))/(d(i+2,1) - d(i,1)); 
      
    endif
endfor

d
k=2;
s=2;
for j=4:length(x)+1
d
    for i=1:k
        d(i,j+1) =(d(i+1,j)-d(i,j))/(d(i+s,1) - d(i,1));
            
    endfor
k = k-1;
s=s+1;
endfor

n=[zeros(1,length(x)-1),v(1)];
t=1;
for i=1:length(x)-1
    t=poly(x(1:i));
    d(1,i+2).*t
    n=n+[zeros(1,length(x)-length(t)),d(1,i+2).*t];
endfor
n