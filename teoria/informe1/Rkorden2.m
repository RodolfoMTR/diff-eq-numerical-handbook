%Rkorden2.m
%Runge Kutta de orden 2
y1 = @(t,y) t-y^(3/2); %ec diff ordinaria
y0=1; %condicion inicial
a=1;b=2; %intervalo donde se quiere la solucion
N = 8; %numero de pasos
%----------ALGORITMO----------------
yt= zeros(1,N); yt(1)=y0;
h = (b-a)/N;
a1=a;
for i=1:N
k1=h*y1(a1,y0);
k2=h*y1(a1+h,y0+k1);
yp=y0+(k1+k2)/2;yt(i+1)=yp;
fprintf('%d| y_%d=%f| k1=%f| k2=%f| y_%d+1=%f\n',i,i-1,y0,k1,k2,i-1,yp)
y0=yp; a1=a1+h;
end
t1=a:h:b;
%-------GRAFICA-----------------
plot(t1,yt,'ro-','MarkerSize',5)
% Etiquetas de los ejes
xlabel('Tiempo (t)')
ylabel('Solucion aproximada y(t)')
