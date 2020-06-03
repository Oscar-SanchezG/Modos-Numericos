clear all
clc
%-------Metodo de la Secante---------
cf = input('Ingrese una funcion:');
f = inline(cf);
x0 = input('Ingrese primer valor:');
x1 = input('Ingrese segundo valor:');
tol = input('Ingrese tolerancia:');
error = 100;
n=0;
fprintf('  n   x0       x1        x2       error\n');
fprintf('  %i  %4.4f   %4.4f  ----     ----\n',n,x0,x1);
while( error>tol )
   n = n+1;
   x2 = x1 - (x1-x0)*f(x1)/(f(x1)-f(x0));
   error = abs(f(x2));
   fprintf('\n  %i  %4.5f   %4.5f  %4.5f     %4.5f',n,x0,x1,x2,error);
   x0 = x1;
   x1 = x2;
end

