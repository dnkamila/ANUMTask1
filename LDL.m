% Algoritma dari tutorial
function [L, D, P] = LDL(A)
    [n,n] = size(A);
    L = eye(n);
    P = eye(n);
%     D = A(1,1);
    D = diag(A);
    for i = 1:n-1
        [val,m] = max(abs(diag(A(i:n,i:n))));
        
        j = m+i-1;
        P([i j],:) = P([j i],:);
        A([i j],:) = A([j i],:);
        A(:,[i j]) = A(:,[j i]);
        D(i) = A(i,i);
        
        L(i+1:n,i) = A(i+1:n,i)/D(i);
        
        for k = i+1:n
            A(k,k:n) = A(k,k:n)-L(k,i)*A(i,k:n);
        end
        D(i+1) = A(i+1,i+1);
        
        for j = i+1:n
            A(j,i:n) = A(j,i:n)-L(j,i)*A(i,i:n);
        end
    end
end