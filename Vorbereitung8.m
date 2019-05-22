n=6;
for i=0:n
  if i==0
    x=[1];
  else 
    x=[1,zeros(1,i)]
   endif
  v = (-1)^(n-i)* poly(ones(1,n-i));
  k = conv(x,v) * nchoosek(n,i);
  X = [-1:0.1:1];
  plot(polyval(k,X));
  hold on;
endfor


