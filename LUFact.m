% Algoritma dari tutorial
function [L, U, P] = LUFact(A)
    [n,n] = size(A);
    L = eye(n);
    P = eye(n);
    
    for i = 1:n-1
        [val,m] = max(abs(A(i:n,i)));
        
        tmpA = A(i,:);
        tmpP = P(i,:);
        A(i,:)=A(m,:);
        P(i,:)=P(m,:);
        A(m,:)=tmpA;
        P(m,:)=tmpP;
        
        L(i+1:n,i) = A(i+1:n,i)/A(i,i);
        for j = i+1:n
            A(j,i:n) = A(j,i:n)-L(j,i)*A(i,i:n);
        end
    end
    U = A;
end