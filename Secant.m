function [ root, ea] = Secant( X0, prevX)
ea=inf;
f=@(x) 4*x^3 - 6*x^2 + 7*x - 2.3;

for i=1:10

xr = (X0 - (f(X0)*(X0-prevX))/(f(X0)-f(prevX)));
root(i) = xr;
ea(i) =abs(((root-X0)/root)*100);
prevX=X0;
X0=xr; 
%endfor
end
%endfunction
end
