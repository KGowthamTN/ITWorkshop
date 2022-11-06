clc
disp('Basic Matrix Operations in SCILAB');
a=[1 2 3;4 5 6;7 8 9];
b=[2 4 6;8 10 12;14 16 18];
disp('Matrix A is: ',a);
disp('Matrix B is: ',b);
c=a+b;
d=a*b;
e=a';
f=b';
disp('Sum of matrices A and B is: ',c);
disp('Product of matrices A and B is: ',d);
disp('Transpose of A matrix: ',e);
disp('Transpose of B matrix: ',f);
