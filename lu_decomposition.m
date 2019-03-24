a=input('Enter your coefficients matrix');
b=input('Enter your constants matrix');
ab = [a b];
[m,n] = size(ab);
L = eye(m);
U = eye(m);
    
    ab = sortrows(ab, -1);
    c = ab(1:m, n:n);
    
    for i=1:1:m
        for j=i+1:1:m
            L(j,i) = (ab(j,i))/(ab(i, i));
            
            for k=1:1:n
                ab(j,k) = ab(j,k) - L(j,i)*ab(i,k);
            end
        end
    end
    
    U = ab(1:m, 1:n-1);
    
    Z = L\c;
    
    x = U\Z;
disp('The upper matrix of A (U):');
disp(U);
disp('The lower matrix of A (L):');
disp(L);
y=L\b;
disp('The value of y is(Y): ')
disp(y);
x=U\y;
disp('The solution of the equations are: ');
disp(circshift(x,1));