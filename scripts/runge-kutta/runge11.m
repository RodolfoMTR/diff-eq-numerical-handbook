%Runge Kutta de orden 4 como función
function yx=runge11(a,b,h,n,y0)
t=a;yx=[];yx(1)=y0;
for i=1:n
    k1=h*ff(t,y0);
    k2=h*ff(t+h/2,y0+k1/2);
    k3=h*ff(t+h/2,y0+k2/2);
    k4=h*ff(t+h,y0+k3);
    yy=y0+(k1+2*(k2+k3)+k4)/6;yx(i+1)=yy;
    y0=yy; t=t+h;
end
end
%función ff.m
function y1=ff(t,y)
	y1=t-t*y;
end
