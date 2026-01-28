% y''+py''+qy=r(x)
p=3;q=2;a=0;b=1;n=10;
ya=0;yb=1;
%------------------
h=(b-a)/n;
A=[];b1=b;
A(1,1)=2*h.^2-2;
A(1,2)=1+3*h/2;
b(1)=(a+h)*h.^2-(1-3*h/2)*ya;
for i=2:(n-2)
        A(i,i-1)=1-3*h/2;
        A(i,i)=2*h*h-2;
        A(i,i+1)=1+3*h/2;
        b(i)=h.^2*(i*h);
end%i
A(n-1,n-2)=1-3*h/2;A(n-1,n-1)=2*h.^2-2;b(n-1)=(a+(n-1)*h)*h.^2-(1+3*h/2)*yb;
[A b']
cc=A\b';cc=[ya cc' yb];
t=a:h:b1;
plot(t,cc,'LineWidth', 2);  % Cambia el 2 por el grosor que desees

