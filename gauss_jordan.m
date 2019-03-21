A = input('Enter the matrix A');
B = input('Enter the matrix B');
X = input('Enter the matrix X');
itr=input('Enter the number of iterations');
err=input('Enter the amount of allowable error');
n = size(A);
e = zeros(n(1),1);
sum=0;
for i=1:itr
    for j=1:n
        for k=1:n
            if k~=j
                sum=sum+A(j,k)*X(k);
            end
        end
        e(j)=(B(j)-sum)/A(j,j);
        sum=0;
    end
    if max(e-X)<err
        disp(e)
        break;
    end
    X=e;
end
disp(X);