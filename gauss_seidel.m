A = input('Enter the matrix A');
B = input('Enter the matrix B');
X = input('Enter the matrix X');
itr=input('Enter the number of iterations');
err=input('Enter the amount of allowable error');
n = size(A);
e = zeros(n(1),1);
sum=0;
for j=1:itr
    
    for i=1:n
        for k=1:n
            if k~=i
                sum=sum+A(i,k)*X(k);
            end
        end
        e(i)=(B(i)-sum)/A(i,i);
        sum=0;
    end
    if max(e-X)<err
        disp(e)
        break;
    end
    X=e;
end
disp(X)