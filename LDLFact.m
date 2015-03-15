% Algoritma nyomot dari internet
function [L, D, P] = LDLFact(A)
    [n,n] = size(A);
    L = eye(n);
    P = eye(n);
    D = zeros(n,1);
    for i = 1:n
        [val,m] = max(abs(diag(A(i:n,i:n))));
        
        tmpA = A(i,:);
        A(i,:) = A(m,:);
        A(m,:) = tmpA;

        tmpA = A(:,i);
        A(:,i) = A(:,m);
        A(:,m) = tmpA;

        tmpP = P(i,:);
        P(i,:) = P(m,:);
        P(m,:) = tmpP;

        tmpP = P(:,i);
        P(:,i) = P(:,m);
        P(:,m) = tmpP;
        
        D(i) = A(i,i)-L(i,1:i-1).^2*D(1:i-1);
        for j = i+1:n
            L(j,i) = (A(j,i)-L(j,1:i-1).*L(i,1:i-1)*D(1:i-1))/D(i);
        end
    end
end