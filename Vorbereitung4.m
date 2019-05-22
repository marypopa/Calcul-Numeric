%%TrapezRegel

a=0;
b=1;
f=@(x) (1/(1+x.^3));
n=20;

termen=(b-a)/(2*n);

sume=0;
x1=a;
for k=2:n
    xk=a+k*(b-a)/n;  
    sume = sume+f(x1)+f(xk);
    x1=xk;
endfor

disp('TRapexregelsumme');
%%TrapezSummeResultat
termen*sume


%%Simsonregel
termen=(b-a)/(6*n);
x1=a;
sume=0;
for k=2:n
    xk=a+k*(b-a)/n;  
    t=(x1+xk)/2;
    sume=sume+f(x1)+4*f(t)+f(xk);
    x1=xk;
endfor
disp('Simsonregel');
termen*sume
    