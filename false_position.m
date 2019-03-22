clear;
syms x;
func=input('Enter the function in term of x:  ');
f=inline(func);
a=input('Enter the initial values:  ');
b=input('Enter the final value:  ');
err=input('Enter the allowable error:  ');
if f(a)*f(b)>0
    fprintf('Enter the value of a and b again root does not exist')
    a=input('Enter the initial values:  ');
    b=input('Enter the final value:  ');
    else
     fprintf('The root exists');
end
if f(a)*f(b)==0
    fprintf('The root is %d ',b);
end
z=1;
xnew=0;
while (z-xnew)>err
z=vpa(f(b)*a-f(a)*b)/(f(b)-f(a));
if f(z)>0
    b=z;
end
if f(z)<0
    a=z;
end
xnew=vpa(f(b)*a-f(a)*b)/(f(b)-f(a));
end
disp(xnew);