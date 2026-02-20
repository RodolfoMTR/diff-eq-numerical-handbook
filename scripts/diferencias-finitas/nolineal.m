%No lineal Iteraciones Metodo de diferencias finitas
%y''-y^2/10=t  y(0)=0; y(1)=1
%y''-s(t)y/10=t; donde s(t)=y
p=0;n=4;%q=st
a=0;b=1;
ya=0;yb=1;
%------------------
h=(b-a)/n;A=[];st=a:h:b;st=st(2:n);
u=h.^2;
A(1,1)=st(1)*u-2;A(1,2)=1+0*h/2;bb(1)=(a+h)*u-ya;
for j=1:5
for i=2:(n-2)
        A(i,i-1)=1;A(i,i)=st(i)*u-2;A(i,i+1)=1;
        bb(i)=u*(i*h);
end%i
A(n-1,n-2)=1;A(n-1,n-1)=st(n-1)*u-2;
bb(n-1)=(a+(n-1)*h)*u-yb;
fprintf('sistema [A | b]\n')
disp([A,bb']) 
cc=A\bb';
if norm(cc-st)<0.01 break;end
st=cc/10;
end;%j
cc=[ya cc' yb]
t=a:h:b;
plot(t,cc);

