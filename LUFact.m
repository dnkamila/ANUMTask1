% Algoritma dari tutorial
function [L, U] = LUFact(A)
    [n,n] = size(A);
    L = eye(n);
    
    for i = 1:n-1
        L(i+1:n,i) = A(i+1:n,i)/A(i,i);
        for j = i+1:n
            A(j,i:n) = A(j,i:n)-L(j,i)*A(i,i:n);
        end
    end
    U = A;
end