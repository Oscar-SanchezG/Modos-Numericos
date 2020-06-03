clear all
clc
n=input('De cuantas ecuaciones se compone el sistema?:');
M=zeros(n, n); Y=zeros(n,1); X=Y;
disp('Lectura de la matriz de coeficientes.');
for i=1:n
    for j=1:n
        fprintf('Ingrese un valor para M(%d, %d):',i,j);
        M(i,j)=input('');
    end
end
disp('Lectura del vector columna Y');
for i=1:n
    fprintf('Ingrese un valor para Y(%d):',i);
    Y(i)=input('');
end
T=M;
mayor=abs(T(1,1));
for i=1:n
    for j=1:n
        if(abs(T(i,j))> mayor)
        mayor=abs(T(i,j))
        end
    end
end
for i=1:n
    T(i,:)=T(i,:)/mayor;
end
if (abs(det(T)) <= 0.06)
    disp('El sistema ingresado es un sistema mal condicionado')
    return;
end

A=[M,Y];
for j=1:n-1
    indiceF=j;
    for i=j+1:n
        if(abs(A(i,j)) >abs(A(indiceF,j)))
            indiceF=i;
        end
    end
    if(j ~= indicef)
        vectorTemporal=A(j,:);
        A(j,:)= A(indicef,:);
        A(indiceF,:)= vectortemporal;
    end
    for i=j+1:n
        A(i,:)=A(i,:)+A(j,:)*(-A(i,j)/A(j,j));
    end
end
for i=n:-1:1
    X(i)=A(i,n+1);
    for j=i+1:n
        X(i)=X(i)-X(j)*A(i,j);
    end
end
disp('Se ha encontrado el valor de las incognitas')
X

SonCorrectos=true;
Format long;
for i=1:n
    S=0;
    for j=1:n
        S=S + M(i,j)*X(j);
    end
    if (abs(S- Y(i)) > 0.000000000000001)
        fprintf('\nEvaluando los resultado, se ha encontrado que no se satistade la ecuacion %i (el resultado indica un valor %f, en vez de %f.\n)',i,S,Y(i));
        SonCorrectos=false;
        break
    end
end
if(~SonCorrectos)
    Disp('* Los resultados podrian no ser correctos, ya que se cometieron errores de redondeo')
end