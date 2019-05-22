%Edith
%Fixpunktsatz von Banach wird benutzt
f=@(x) (8-x)^1/3;
x0=0;
x1=f(x0);
while(x0 != x1)
  x0=x1;
  x1=f(x0);
endwhile
x1