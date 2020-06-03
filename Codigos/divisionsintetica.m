
function divisionsintetica
fprintf('Metodo de la Division Sintetica:\n');
p=input('Ingrese los Coeficientes del Polinomio como Vector:\n');
x0=input('Ingrese el numero a analizar:\n');
n=length(p);
a=p(1);
for j=1:n-1
a(j+1)=p(j+1)+x0*a(j);
end
if(a(n)==0)
fprintf('ES UNA RAIZ=%5.3f\n',x0);
else
fprintf('NO ES UNA RAIZ\n');
end
end