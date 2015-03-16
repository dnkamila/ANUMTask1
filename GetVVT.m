function vvt = GetVVT(vv, rc)
    n = length(vv);
    
    vvt = zeros(1,rc*(rc+1)/2);
    k = 1;
    for col = 1:n
        for row = col:n
            vvt(k) = vv(row)*vv(col);
            k = k+1;
        end
    end
end