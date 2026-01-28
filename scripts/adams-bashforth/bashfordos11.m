%ejecuta adams-bashforth de orden 2
y0=1/2; %w1=? por R-K
a=0;b=1;n=4;k=1;%k=1 porque es de orden 2
%-----------------------
h=(b-a)/n;
yx=runge11(a,b,h,k,y0);
t=a+k*h;
for i=2:n
Wx=yx(i)+h*(3*ff(t,yx(i))-ff(t-h,yx(i-1)))/2;
yx(i+1)=Wx;
t=t+h;
end
yx

