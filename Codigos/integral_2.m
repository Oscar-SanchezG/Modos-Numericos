function suma=integral_2(f,x)
    suma=0;
    for i=1:length(x)-1
        xm=(x(i+1)+x(i))/2;
        suma=suma+f(xm)*(x(i+1)-x(i));
    end
end