%ejecuta adams-bashforth de orden 3
y0=1/2; %w1=? por R-K
a=0;b=1;n=4;k=2;%k=2 porque es de orden 3
%---------------------
h=(b-a)/n;
yx=runge11(a,b,h,k,y0);
t=a+k*h;
for i=k+1:n
Wx=yx(i)+h*(23*ff(t,yx(i))-16*ff(t-h,yx(i-1))+5*ff(t-2*h,yx(i-2)))/12;
yx(i+1)=Wx;
t=t+h;
end
yx

