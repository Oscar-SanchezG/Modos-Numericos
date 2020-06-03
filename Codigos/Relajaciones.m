clc;
function [Navi] = GNavi(A,b,w,tol,it)
if nargin<5, tol=sqrt(eps);
end
n=size(A,1);
x=zeros(n,1);
r = b - A*x;
error = norm(r);
if error<tol, return, end
b = w * b;
M = w * tril(A,-1) + diag(diag(A));
N = -w * triu(A,1) + (1.0 - w) * diag(diag(A));
k=0;
iter=0;
while error>=tol && k<it
    x_1 = x;
    x = M \ ( N*x + b );
    error = norm(x - x_1)/norm(x);
    iter = iter+1;
    Navi=[iter x_1'];
    fprintf(' %d  %5.4f %5.4f %5.4f  \n',Navi);
end
end