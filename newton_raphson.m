clear;
syms x;
func=input('Enter the function in term of x:  ');
dfunc=input('Enter the differentiated function in term of x:  ');
f=inline(func);
g=inline(dfunc);
a=input('Enter the guess root:  ');
n=input('Enter the number of iterations you want:  ');
res=0;
for i=1:n
    res=a-vpa(f(a)/g(a));
    a=res;
end
disp(res)