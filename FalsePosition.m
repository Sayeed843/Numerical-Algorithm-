function [root, ea] = FalsePosition(xl, xu)
  f=@(x) 4*x^3 - 6*x^2 + 7*x - 2.3;
  
  ea=inf;
  xr=0;
  prevXr=inf;
  iteration = 1;
  
 while((f(xl) * f(xu)) >= 0)
 fprintf('Initial guesses invalid. Try Again...');
 fprintf('\n');
 xl = input('Bisection: Enter the value of xl: ');
 xu = input('Bisection: Enter the value of xu: ');
 %endwhile
 end

 for i = 1:10
 %if(i != 1)
 if(1 ~= 1)
 prevXr=xr;
 %endif 
 end

 xr = xu - ((f(xu)*(xl-xu))/(f(xl)-f(xu)));
 root(i) = xr;
 ea(i) = abs(((xr - prevXr)/xr) *100);
 if(f(xl) * f(xr) < 0)     
 xu = xr;     
 else  
 xl=xr;
     
 %endif
 end
 %endfor
 end
%endfunction
end
