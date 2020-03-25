function a=poly_interp(x,y)
% x and y must be column vectors
b=y;
% to obtain vandermode matrix, length of x must be known
n=length(x);
% first column of vandermonde matrix
A=ones(n,1);
% obtain vandermode matrix
for k=1:n-1
    A=[A x.^k];
end

% solve the equation
a=A\b;

end