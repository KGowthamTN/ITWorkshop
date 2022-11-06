clc
disp('Introduction to SCILAB');
a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
disp('a= ',a,'b= ',b);
c=a+b;
d=a-b;
e=a*b;
f=a/b;
mprintf('Sum of %d and %d is %d: ',a,b,c);
mprintf('\nDifference of %d and %d is %d: ',a,b,d);
mprintf('\nProduct of %d and %d is %d: ',a,b,e);
mprintf('\nDivision of %d and %d is %d: ',a,b,f);
g=(a^2)+(b^2);
mprintf('\nSum of square of %d and %d is %d: ',a,b,g);
