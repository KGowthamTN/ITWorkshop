//Determination of polynomial using method of Least Square Curve Fitting.
clc
clear
m = input ("Enter the Degree of Polymomial : ")
j = 0
for i= m +1: -1:1
mprintf ("Enter the coeff of xˆ%d: " ,i -1)
a(1 , i )= input(" ")
j = j +1
ax (1 , j ) = a(1 , i )
end
nx = input( "Enter the Degree of Polymomial in Which Want to Fit : ")
p = poly (a ,'x', 'coeff')
x = 1:.1:2.5
function p = polyfit(x, y, n)
if length(x) ~= length(y)
error('x and y vectors must be the same size')
end
x = x( : );
y = y( : );
V = ones(length(x), n+1);
for j = n : -1 : 1
V(:, j) = x .* V (:, j+1);
end
[Q, R] = qr(V);
QTy = Q' * y;
p = R(1 : n+1, 1 : n+1) \ QTy(1 : n+1);
p = p.';
endfunction
function y = polyval(p, x)
y = 0*x;
p = mtlb_fliplr(p);
for ix = 1 : length(p)
y = y + p(ix) * x.^(ix-1);
end
endfunction
y1 = polyval( ax , x)
n = polyfit(x , y1 , nx )
y2 = polyval(n , x)
p2 = poly ( n ( nx +1: -1:1) ,'x','coeff')
plot (x ,y1 , '-' ,x , y2 , '+r' )
title ( "Least square curve fitting" )
xlabel ( " Input (X) " )
ylabel ( " Output (Y) " )
set ( gca () ," grid " ,[1 1])
disp (p ," Polynomical Enter ")
disp ( p2 ," Polynomical after LSQ fitting ")
