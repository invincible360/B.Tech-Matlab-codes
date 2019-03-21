syms x;
func=input('Enter the function in term of x:  ');
f=inline(func);
a=input('Enter the initial values:  ');
b=input('Enter the final value:  ');
n=input('Enter the total number of divisions:  ');
h=(b-a)/n;
sum3=0;
sum=0;
count=0;
for i=a:h:b
    if rem(count,3)==0
    sum3=sum3+f(i);
    end
    count=count+1;
    sum=sum+f(i);
end
sum3=sum3-f(a);
sum=sum-sum3;
y=(3*h/8)*(f(a)+sum3+3*sum+f(b));
fprintf("The result of simpsons 3/8 is:  ");
disp(y);