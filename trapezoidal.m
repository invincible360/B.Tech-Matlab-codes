syms x;
func=input('Enter the function in term of x:  ');
f=inline(func);
a=input('Enter the initial values:  ');
b=input('Enter the final value:  ');
n=input('Enter the total number of divisions:  ');
h=(b-a)/n;
sum=0;
for i=a:h:b
    sum=sum+f(i);
    disp(sum)
end
q=sum-f(a)-f(b);
y=(h/2)*(f(a)+2*q+f(b));
fprintf("The result of integration is:  ");
disp(y);