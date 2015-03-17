function [x] = backwardOri(U,b)
%Input	: matriks U dan vector b
%Output	: vektor solusi x
n = length( b );
x = zeros( n, 1 );
x(n)=b(n)/U(length(U));
  for i=n-1:-1:1
      t=0;
      for j=n:-1:i+1
          t=t+U((n-i/2)*(i-1)+j)*x(j);
      end
      x(i)=(b(i)-t)/U((n-i/2)*(i-1)+i);
  end
end
