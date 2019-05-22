%Taylor polinom
x0=0;
f=[-1 0 0 6];
t=0;
n=[zeros(1,length(f)-1),f(1)];
for i=2:length(f)
    t=poly(zeros(1,i-1))
    p=f(i)/factorial(i-1)
    n=n+[zeros(1,length(f)-length(t)),t*p]
endfor
n
    
