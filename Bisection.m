function [root, ea] = Bisection (xl, xu)
  f=@(x) 4*x^3 - 6*x^2 + 7*x - 2.3;
  ea=inf;
  xr=0;
  prevXr=inf;

 while((f(xl) * f(xu)) >= 0)
 fprintf('Initial guesses invalid. Try Again...');
 fprintf('\n');
 xl = input('Bisection: Enter the value of xl: ');
 xu = input('Bisection: Enter the value of xu: ');
 %endwhile
 end

 for i = 1:10
 %if(i != 1)
 if(i ~= 1)

 prevXr=xr;
 %endif 
 end

 xr = (xl+xu)/2;
 root(i) = xr;
 
 %if(xr!=0)
  if(xr ~= 0)
  ea(i) = abs(((xr - prevXr)/xr) *100);
 %endif
 end

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
