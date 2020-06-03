clear all;
clc;
fprintf('RESOLUCION DE ECUACIONES LINEALES POR EL METODO GAUSS-JORDAN\n\n');
m=input('determine amplitud de la matriz cuadrada ');
n=input('Cuantas incognitas ?enen las ecuaciones: ');
for i=1:m
    for j=1:n
        fprintf('El elemento A[%d %d]',i,j);
        A(i,j)= input (' ')
    end
end
A
for j=1:m
    fprintf('Agregue la columna de resultados R[%d]: ',j);
    R(j)= input(' ');
end
B=[A R']

for i=1:m
    B(i,:)=B(i,:)/B(i,i);
    for j=i+1:m
        B(j,:)=B(j,:)-B(i,:)*B(j,i);
        j=j+1;
        B
    end
    i=i+1;
    B
end
fprintf('HOLA HAREMOS CERO LOS ELEMENTOS INFERIORES')

for i=m:-1:2
    for j=i-1:-1:1
        B(j,:)=B(j,:)-B(i,:)*B(j,i);
        j=j-1;
        B
    end
    i=i-1;
    B
end

for i=1:m
    for j=n+1
        fprintf('\nLa variable X[%d] es:\n',i);
        B(i,j)
        B
    end
end