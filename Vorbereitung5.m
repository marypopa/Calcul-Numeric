%Edith
clear all;
close all;
figure

f=@(x)exp(-x);
x=0.1:0.01:1;

hold on
plot(x,f(x),"b") % a)es folgt dass f([0.1,1])?[0.1,1]
hold on

fd=@(x)-exp(-x);
%plot(x,abs(fd(x)),"g") %b) |f'(x)| < 1

% aus a und b folg dass der Fixpunktsatz von Banach erfullt ist

x0=0;
x1=f(x0);
while(x0 != x1)
  x0=x1;
  x1=f(x0);
endwhile

plot(x1,f(x1),"r*")
plot(x,x)
