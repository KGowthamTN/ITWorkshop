clc
m=input('Enter the Degree of polymomial: ')
j=0
for i=m+1:-1:1
mprintf('Enter the coeff of xˆ%d: ',i-1)
A(1,i)=input('')
j=j+1
Ax(1,j)=A(1,i )
end
P=poly(A,'x','coeff')
R=roots(Ax)
disp(P,'Polymomial')
disp('Roots of polynomial',R)
