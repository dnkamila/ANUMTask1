function [L, D] = LDLFact(A)
    [n,m] = size(A);
    
    L = zeros(n,n);
    for i = 1:n
        L(i,i)=1;
    end
    
    D = zeros(n,1);
    for i=1:n
        D(i)=A(i,i)-L(i,1:i-1).^2*D(1:i-1);
        for j=i+1:n
            L(j,i)=(A(j,i)-L(j,1:i-1).*L(i,1:i-1)*D(1:i-1))/D(i);
        end
    end
end