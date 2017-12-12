function [root, ea] = NewtonRaphson(prevXr)
f=@(x) 4*x^3 - 6*x^2 + 7*x - 2.3;
fPrime = @(x) 12*x^2 - 12*x + 7;

for i=1:10
xr = (prevXr - (f(prevXr)/fPrime(prevXr)));
root(i) = xr;
ea(i) = abs(((xr-prevXr)/xr)*100);
prevXr=xr;
%endfor
end
