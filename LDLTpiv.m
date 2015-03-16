function [L,D,P] = LDLTpiv(A)
    n = length(A);
    P = ones(1,n);
    k = 1;
    for col = 1:n
        for row = col:n
            v(k) = A(row,col);
            k = k+1;
        end
    end
    
    for k=1:n
        alfa = k;
        for i = k:n
           if v((n-i/2)*(i-1)+i) > v(alfa)
               alfa = i;
           end
        end
        j = alfa+k-1;
        
        P([k j],:) = P([j k],:);
        
        %ubah baris
        %A([k j],:) = A([j k],:);
        for col = 1:n
            for row = col:n
                if 

        A(:,[k j]) = A(:,[j k]);
        
        alfa = A(k,k);
        rows = k+1:n;
        v = A(rows,k);
        A(rows,k) = v/alfa;
        A(rows,rows) = A(rows,rows) - v*v'/alfa;
    end
    L = tril(A,-1)+eye(n,n);
    D = diag(diag(A));