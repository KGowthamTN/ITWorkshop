clc;
m=input('How many linear equations do you want?');
n=m;
disp('Enter the coefficients for the no. of linear equations: ');
for i=1:m
for j=1:n
A(i,j)=input('\');
end
end
disp('The coefficients in the matrix form is: ');
disp(A);
disp('Enter the RHS of the equation: ');
for i=1:m
Y(i)=input('\');
end
disp('The RHS of equation in matrix form is: ');
X=A\Y;
disp('Solution of linear equations is');
disp(X);
