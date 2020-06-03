function Gauss_Seidel(A,b,Xe)
n=length(A);
x=zeros(n,1);
e=1;
while (e>0.0001)
    for i=1:n
        sum=0;
        for j=1 :n
            if (j~=i)
                sum=sum+A(i,j)*Xe(j);
            end
            x(i)=(b(i)-sum)/A(i,i);
        end
        e=norm(Xe-x);
        Xe=x;
    end
end
isnan(x)
end