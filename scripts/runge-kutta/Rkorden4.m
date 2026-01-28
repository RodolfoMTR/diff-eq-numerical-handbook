%Runge Kutta de orden 4
y1 = @(t,y) t-t*y; %ec. diff. ordinaria a solucionar
y0=1/2; %condición inicial
a=0;b=1; %intervalos
%----------------------
yt=[];yt(1)=y0;
N=4;
h = (b-a)/N;
a1=a;
for i=1:N
    k1=h*y1(a1,y0);
    k2=h*y1(a1+h/2,y0+k1/2);
    k3=h*y1(a1+h/2,y0+k2/2);
    k4=h*y1(a1+h,y0+k3);
    yp=y0+(k1+2*(k2+k3)+k4)/6;yt(i+1)=yp;
    fprintf('%d| yn=%f| k1=%f| k2=%f| k3=%f | k4=%f| y_n+1=%f\n',i,y0,k1,k2,k3,k4,yp)
    y0=yp; a1=a1+h;
end
  t1=a:h:b;
  t=a:0.01:b; y3=1-exp(-t.^2/2)/2;
  plot(t,y3,t1,yt,'.m','MarkerSize',20)

