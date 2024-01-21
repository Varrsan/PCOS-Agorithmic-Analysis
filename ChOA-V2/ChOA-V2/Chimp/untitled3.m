clear all
clc
syms x y
f=input('Enter the function : ');
div(x,y)=divergence(f,[x,y]);
display(div)
P(x,y)=f(1);Q(x,y)=f(2);
x=linspace(-4,4,20);y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y);V=Q(X,Y);
figure
pcolor(X,Y,div(X,Y));
shading interp
hold on;
quiver(X,Y,U,V,1)
axis on
xlabel('x');ylabel('y');
hold off;
title('Vector field of F(x,y)=[f1,f2]');
