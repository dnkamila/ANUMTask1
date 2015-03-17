function [x] = forward(v,b)
	n = length(b);
	x = zeros(n,1);
    
    x(1) = b(1)/v((n-1/2)*(1-1)+1);

	for i=2:n
        x(i) = b(i);
        for j=1:i-1
            x(i) = x(i) - v((n-j/2)*(j-1)+i) * x(j);
        end
        x(i) = x(i) / v((n-i/2)*(i-1)+i);
    end
end