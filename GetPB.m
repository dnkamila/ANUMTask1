function pb = GetPB(P, b)
    n = length(b);
    pb = zeros(n,1);
    
    for i=1:n
        pb(i) = b(P(i));
    end
end