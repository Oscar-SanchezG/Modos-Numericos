function [t,w]=euler(f,a,b,ya,n)
h=(b-a)/n;
t=zeros(1,n+1);
w=zeros(1,n+1);
t(1)=a;
w(1)=ya;
for i=1:n
    w(i+1)=w(i)+h*feval(f,t(i),w(i));
    t(i+1)=a+h*i;
end
w
