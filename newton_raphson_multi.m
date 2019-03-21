syms x y;
func1=input('Enter the first function');
func2=input('Enter the second function');
f=inline(func1);
g=inline(func2);
x0=input('Enter the initial approximation for x:');
y0=input('Enter the initial approximation for y:');
fx0=input('Enter the partial differentiation of first function wrt x:');
fy0=input('Enter the partial differentiation of first function wrt y:');
gx0=input('Enter the partial differentiation of second function wrt x:');
gy0=input('Enter the partial differentiation of second function wrt y:');
fx1=inline(fx0);
fy1=inline(fy0);
gx1=inline(gx0);
gy1=inline(gy0);
k=1;h=1;
e=input('Enter the allowable error');
x1=x0;
y1=x0;
while (h-k)>e
    z=[fx1(x1,y1),fy1(x1,y1);gx1(x1,y1),gy1(x1,y1)];
    d=det(z);
    m=[-f(x1,y1),fy1(x1,y1);-g(x1,y1),gy1(x1,y1)];
    n=[fx1(x1,y1),-f(x1,y1);gx1(x1,y1),-g(x1,y1)];
    h=(1/d)*det(m);
    k=(1/d)*det(n);
    x0=x1+h;
    y0=y1+k;
    x1=x0;
    y1=y0;
end
disp(x0);
disp(y0);