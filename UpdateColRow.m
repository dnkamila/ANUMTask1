function v = UpdateColRow(v, n, k, vv)
%     for i = row:n
%         v((n-col/2)*(col-1)+i) = v((n-col/2)*(col-1)+i)/alpha;
%     end
%     idx = 1;
%     for j = k+1:n
%         for i = j:n
%             v((n-j/2)*(j-1)+i) = v((n-j/2)*(j-1)+i) - vv(idx);
%             idx = idx+1;
%         end
%     end
    idx = (n-(k+1)/2)*((k+1)-1)+(k+1);
    for i = idx:length(v)
        v(i) = v(i) - vv(i-idx+1);
    end
end