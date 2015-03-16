function [v] = UpdateCol(v, n, row, col, alpha)
    for i = row:n
        v((n-col/2)*(col-1)+i) = v((n-col/2)*(col-1)+i)/alpha;
    end
    
    GetCol(v,n,row,col);
end