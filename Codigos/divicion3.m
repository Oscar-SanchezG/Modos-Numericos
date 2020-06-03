disp('                         DIVISION SINTETICA')
x=input('ingrese los coeficientes del polinomio (A(x))de n grado en forma de vector:\n');
y=input('ingrese el polinomio (B(X)) de primer grado en forma de vector:\n');
N=length(x);
L=zeros(1,N);
L(1,:)=x(1);
d=-y(2)/y(1);
for k=2:N
Z=(d*L(1,k-1)+x(1,k));
L(:,k)=Z;
end
RESIDUO=L(1,N)
L(:,N)=[];
COCIENTE=L 
%EJEMPLO: Sea el polinomio A(X)=X3+2X2+3X+4 [1 2 3 4]  Y  B(X)=X-5 [1 -5], determine el cociente y el residuo