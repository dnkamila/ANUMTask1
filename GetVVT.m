function vvt = GetVVT(vv, n,row,col)
    n = length(vv);
    
    vvt = zeros(1,n-col+1-row+1,1);
    k = 1;
    for col = 1:n
        for row = col:n
            vvt(k) = vv(row)*vv(col);
            k = k+1;
        end
    end
end