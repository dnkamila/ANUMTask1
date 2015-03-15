% Algoritma dari pak chan
function [L, D] = LDL(A)
    [n,n] = size(A);
    
    D(1) = A(1,1);
    L = eye(n);
    
    for i = 1:n-1
        L(i+1:n,i) = A(i+1:n,i)/D(i);
        for j = i+1:n
            A(j,j:n) = A(j,j:n) - L(j,i)*A(i,j:n);
        end
        D(i+1) = A(i+1,i+1);
    end
end