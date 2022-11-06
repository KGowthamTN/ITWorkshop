clc
clear
m=input('Enter the no of row of matrix A: ')
n=input('Enter the no of column of matrix A: ')
for i=1:m
for j=1:n
mprintf('Enter the element no (%d,%d): ',i,j)
A(i,j)=input('')
end
end
[eVal eVect]=spec(A)
disp('Eigen values: ',eVal)
disp('Eigen vectors: ',eVect)
