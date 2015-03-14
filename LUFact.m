function [L, U] = LUFact(A)
    [n,n] = size(A);
    L = eye(n);
    
    for k = 1:n-1
        L(k+1:n,k) = A(k+1:n,k)/A(k,k);
        for i = k+1:n
            A(i,k:n) = A(i,k:n)-L(i,k)*A(k,k:n);
        end
    end
    U = A;
end