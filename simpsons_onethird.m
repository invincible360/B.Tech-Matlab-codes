syms x;
func=input('Enter the function in term of x:  ');
f=inline(func);
a=input('Enter the initial values:  ');
b=input('Enter the final value:  ');
n=input('Enter the total number of divisions:  ');
h=(b-a)/n;
sume=0;
sumo=0;
count=0;
for i=a:h:b
    if rem(count,2)==0
    sume=sume+f(i);
    else
    sumo=sumo+f(i);
    end
    count=count+1;
end
sume=sume-f(a);
if rem(n,2)==0
    sume=sume-f(b);
else
    sumo=sumo-f(b);
end
y=(h/3)*(f(a)+4*sumo+2*sume+f(b));
fprintf("The result of simpsons 1/3 is:  ");
disp(y);