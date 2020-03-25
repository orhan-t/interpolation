function test_poly()
% creat x and y vectors
x=[1;2;5;7;10];
y=[2;4;1;8;9];
%plot (x,y) points
plot(x,y,'*');
xlabel('x');
ylabel('y');
title('given points and polinomial function');
hold on; %hold the graph to plot the polynom on same graph

%Pass x and y values to a=poly_interp(x,y) 
%function to calculate the coefficients of the polynomial.
a=poly_interp(x,y);
%conver a vector from column vector to row vector
a=a';
%reverse the a vector
a=wrev(a);
%create a proper range of values
t=[min(x)-1:0.01:max(x)+1];
%calculate polynom value
poly1=polyval(a,t);
plot(t,poly1,'r-');
hold off;
grid;
end