function e = GetError(v, x, b)
    n = length(b);
    
    e = zeros(n,1);
    for j = 1:n
        for i = 1:j-1
            e(i) = e(i) + v((i-1)*n-i*(i-1)/2+j)*x(j);
        end
        for i = j:n
            e(i) = e(i) + v((j-1)*n-j*(j-1)/2+i)*x(j);
        end
    end
    
    for i = 1:n
       e(i) = e(i) - b(i);
    end
    
    norm(e);
end