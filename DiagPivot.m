function [A] = DiagPivot(A, i, m)
    %[val,m] = max(abs(diag(A)));
    tmpA = A(i,:);
    A(i,:) = A(m,:);
    A(m,:) = tmpA;

    tmpA = A(:,i);
    A(:,i) = A(:,m);
    A(:,m) = tmpA;
    
    A
end