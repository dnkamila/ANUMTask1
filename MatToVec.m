function v = MatToVec(A)
    n = length(A);
    k = 1;
    for col = 1:n
        for row = col:n
            v(k) = A(row,col);
            k = k+1;
        end
    end
end