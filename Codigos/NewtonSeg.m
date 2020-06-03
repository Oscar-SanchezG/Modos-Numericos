%------Metodo de Newton-Rapson 2 orden -----
clear all
clc
syms x;
a=input('Ingrese la funcion f:');
f=inline(a);
der1=diff(a,x);
df=inline(der1);
der2=diff(der1,x);
df2=inline(der2);
error=0.001;
x=input('Ingrese el valor inicial:');

n=0;
conv=(abs(f(x)));
fprintf('\t n \t\t x \t\t conv \n');
while(conv>error)
    n=n+1;
    z=(1+((f(x)*df2(x))/(2*(df(x)^2))));
    x=x-(f(x)/df(x))*z;
    conv=(abs(f(x)));
    fprintf('%f %f %f\n',n,x,conv);
    if(n>50)
        break
    end
    
end
respuesta=x
conv