clc;
clear all;
xl = input('Bisection: Enter the value of xl: ');
xu = input('Bisection: Enter the value of xu: ');

[root1,ea1] = Bisection(xl,xu);

xl = input('False Position: Enter the value of xl: ');
xu = input('False Position: Enter the value of xu: ');

[root2,ea2] = FalsePosition(xl,xu);

prevXr = input('Newton-Raphson: Enter the previous root: ');

[root3, ea3] = NewtonRaphson(prevXr);

X0 = input('Secant: Enter the present root: ');
prevX = input('Secant: Enter the previous root: ');
[ root4, ea4] = Secant( X0, prevX);

x = 1:10;
figure
plot(x,root1, 'k--o', x,root2,'r-s', x,root3,'b:d', x, root4,'m-.^');
legend('Bisection','False Position','Newton Raphson','Secant');

xlabel('Number of Iteration');
ylabel('Value of root');
title('Root Analysis');

grid on

figure 
plot(x,ea1, 'k--o', x,ea2,'r-s', x,ea3,'b:d', x,ea4,'m-.^');
legend('Bisection','False Position','Newton Raphson','Secant');
xlabel('Numebr of Iteration');
ylabel('Value of Error');
title('Error Analysis');
grid on
