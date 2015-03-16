function [L,D,P] = LDLTpiv(A)
    n = length(A);
    P = 1:n;
    
    %MathToVec
    k = 1;
    v = zeros(1,n);
    for col = 1:n
        for row = col:n
            v(k) = A(row,col);
            k = k+1;
        end
    end
    
    for k=1:n
        %GetMaxDiagM
        alfa = k;
        for i = k:n
           if v((n-i/2)*(i-1)+i) > v(alfa)
               alfa = i;
           end
        end
        j = alfa+k-1;
        
        %DiagPivotP
        tmpP = P(k);
        P(k) = P(j);
        P(j) = tmpP;
        
        %DiagPivotA
        v = coba(v, k, j, n);
        
        %GetMaxDiagVal
        alfa = v((n-k/2)*(k-1)+k);
        
        %rows = k+1:n;
        %vv = A(rows,k);
        vv = GetCol(v,n,k+1,k);
        
        %A(rows,k) = vv/alfa;
        v = UpdateCol(v,n,k+1,k,alpha);
        
        A(rows,rows) = A(rows,rows) - vv*vv'/alfa;
    end
    L = tril(A,-1)+eye(n,n);
    D = diag(diag(A));