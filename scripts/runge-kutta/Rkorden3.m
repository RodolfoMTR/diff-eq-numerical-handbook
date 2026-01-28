%Runge Kutta de orden 3
y1 = @(t,y) t-y^(3/2); %Ec. Diff. Ordinaria a solucionar
y0=1; %condición inicial
a=1;b=2; %Intervalos
N=8;
h = (b-a)/N;
yt=zeros(1,N);yt(1)=y0;
a1=a;
for i=1:N
k1=h*y1(a1,y0);
k2=h*y1(a1+h/2,y0+k1/2);
k3=h*y1(a1+h,y0+k1+2*k2);
yp=y0+(k1+4*k2+k3)/6;yt(i+1)=yp;
fprintf('%d| yn=%f| k1=%f| k2=%f| k3=%f y_n+1=%f\n',i,y0,k1,k2,k3,yp)
y0=yp; a1=a1+h;
end
t=a:h:b;
pa=polyfit(t,yt,4); % minimos cuadrados
pt=polyval(pa,t);
plot(t,pt,t,yt,'.r','MarkerSize',10)

