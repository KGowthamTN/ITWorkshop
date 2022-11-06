clc
m=input('Enter the no of row of matrix A: ')
n=input('Enter the no of column of matrix A: ')
for i=1:m
for j=1:n
mprintf('Enter the element no (%d,%d): ',i,j)
A(i,j)=input('')
end
end
m=input('Enter the no of row of matrix B:')
n=input('Enter the no of column of matrix B: ')
for i=1:m
for j=1:n
mprintf('Enter the element no (%d,%d): ',i,j)
B(i,j)=input('')
end
end
C=pinv(A)*B
disp('Output1(pinv): ',C)
C1=A\B
disp('Output2(\)',C1)
