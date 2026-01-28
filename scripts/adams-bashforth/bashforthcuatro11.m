%ejecuta adams-bashforth de orden 4
y0=1/2; %w1=? por R-K
a=0;b=1;n=4;k=3;%k=3 porque es de orden 4
%---------------------
h=(b-a)/n;
yx=runge11(a,b,h,k,y0);
t=a+k*h;
for i=k+1:n
Wx=yx(i)+h*(55*ff(t,yx(i))-59*ff(t-h,yx(i-1))...
	    +37*ff(t-2*h,yx(i-2))-9*ff(t-3*h,yx(i-3)))/24;
yx(i+1)=Wx;
t=t+h;
end
yx    

