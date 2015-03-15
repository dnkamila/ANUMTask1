% Algoritma dari tutorial
function [L, D] = LDL(A)
    [n,n] = size(A);
    L = eye(n);
    
    D(1) = A(1,1);
    for i = 1:n-1
        L(i+1:n,i) = A(i+1:n,i)/D(i);
        for j = i+1:n
            A(j,i:n) = A(j,i:n)-L(j,i)*A(i,i:n);
        end
        D(i+1) = A(i+1, i+1);
    end
end