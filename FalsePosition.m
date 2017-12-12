function [root, ea] = FalsePosition(xl, xu)
  f=@(x) 4*x^3 - 6*x^2 + 7*x - 2.3;
  %f=@(x) -26 + 85*x -91*x^2 + 44*x^3 -8*x^4 + x^5;
  
  ea=inf;
  xr=0;
  prevXr=inf;
  iteration = 1;
  
 
  
 while((f(xl) * f(xu)) >= 0)
 fprintf("Initial guesses invalid. Try Again...");
 fprintf("\n");
 xl = input("Bisection: Enter the value of xl: ");
 xu = input("Bisection: Enter the value of xu: ");
 endwhile
 for i = 1:10
 if(i != 1)
 prevXr=xr;
 endif 
 xr = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu)));
 root(i) = xr;
 ea(i) = abs(((xr - prevXr)/xr) *100);
 %fprintf("Root: %f\t ea: %f.\n",xr,ea);
 if(f(xl) * f(xr) < 0)     
 xu = xr;     
 else  
 xl=xr;     
 endif
 endfor
endfunction
