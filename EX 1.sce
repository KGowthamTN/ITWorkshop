clc 
m=input("enter number of rows of the Matrix: ");
n=input("enter number of columns of the Matrix: "); 
disp('enter the first Matrix') 
for i=1:m
     for j=1:n 
         A(i,j)=input('\'); 
     end 
 end 
 disp('enter the second Matrix') 
 for i=1:m 
     for j=1:n 
         B(i,j)=input('\'); 
     end 
 end 
 for i=1:m 
     for j=1:n 
         C(i,j)=A(i,j)+B(i,j); 
     end 
 end 
 disp('The first matrix is') 
 disp(A) 
 disp('The Second matrix is') 
 disp(B) 
 disp('The sum of the two matrices is') 
 disp(C)
