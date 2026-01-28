%R-K de orden 4 para sistemas
clear all
%format long
format shortG
%---------------------
x1 = @(t,x,y) 2*x+3*y;
y1 = @(t,x,y) 2/3*x+3*y;
a=0;b=1;n=10;
t=a;x0=0;y0=1;
%---------------------
h=(b-a)/n; %paso
xt=[];yt=[];
xt(1)=x0;yt(1)=y0;
for i=1:n
k11=h*x1(t,x0,y0);
k12=h*y1(t,x0,y0);
k21=h*x1(t+h/2,x0+k11/2,y0+k12/2);
k22=h*y1(t+h/2,x0+k11/2,y0+k12/2);
k31=h*x1(t+h/2,x0+k21/2,y0+k22/2);
k32=h*y1(t+h/2,x0+k21/2,y0+k22/2);
k41=h*x1(t+h,x0+k31,y0+k32);
k42=h*y1(t+h,x0+k31,y0+k32);
xs=x0+(k11+2*(k21+k31)+k41)/6;
ys=y0+(k12+2*(k22+k32)+k42)/6;
xt(i+1)=xs;yt(i+1)=ys;
t=t+h;x0=xs;y0=ys;
end%i
u=0:h:1;
disp([u' xt' yt'])    
