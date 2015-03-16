function v = UpdateColRow(v, n, k, vv)
    idx = (n-(k+1)/2)*((k+1)-1)+(k+1);
    for i = idx:length(v)
        v(i) = v(i) - vv(i-idx+1);
    end
end