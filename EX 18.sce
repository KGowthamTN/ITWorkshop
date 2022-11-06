//Determination of polynomial fit, analyzing residuals, exponential fit and error bounds from the given data.
clc
clear all
census =[1901 238396327;
1911 252093390;
1921 251321213;
1931 278977238;
1941 318660580;
1951 361088090;
1961 439234771;
1971 548159652;
1981 683329097;
1991 846421039;
2001 1028737436;
2011 1210854977]
year = census (: ,1) ;
pop = census (: ,2) ./1000000;30
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
//Normalisation of data
syear = ( year - mean ( year ) ) ./ stdev ( year ) ;
//Fit the data in 1 deg polynomial
a1 = polyfit ( syear , pop ,1) ;
p = polyval ( a1 , syear ) ;
figure (1)
subplot(2 ,2 ,1)
plot( year , pop , '-' , year ,p , '+' )
title( 'Polyfit of data' )
xlabel( 'Year' )
ylabel( 'population ( in millions )' )
set( gca() ,'grid' ,[1 1])
//Analyzing Residuals
res1 = pop - p ;
subplot(2 ,2 ,2)
plot( year , res1 , 'r*' )
title( 'res of data' )
xlabel( 'Year' )
ylabel( 'res ( in millions )' )
set( gca () ,"grid" ,[1 1])
subplot(2 ,2 ,4)
//Fit the data in 4 deg polynomial
a2 = polyfit( syear , pop ,4) ;
p1 = polyval( a2 , syear ) ;
subplot(2 ,2 ,3)
plot( year , pop , '-' , year , p1 , '+' )
title ( 'Polyfit of data' )
xlabel ( 'Year' )
ylabel ( 'population ( in millions )' )
set( gca () ,'grid' ,[1 1])
//Analyzing Residuals
res2 = pop - p1 ;
subplot(2 ,2 ,4)
plot( year , res2 , 'r*' )
title ( 'res of data' )
xlabel ( 'Year' )
ylabel ( 'res ( in millions)' )
set(gca () ,'grid' ,[1 1]) //for grid on
//Exponential Fit 1 degree polynomial
figure(2)
subplot(2 ,2 ,1)
log1 = polyfit( syear , log10 ( pop ) ,1) ;
logr1 = 10.^ polyval ( log1 , syear ) ;
plot2d("oll" , year ,[ logr1 pop ])
title ( 'Plot of Exp Fit' )
ylabel ( 'Population ( in millions )' )
xlabel ( 'Year' )
set( gca () , 'grid' ,[1 1])
//Analyzing the residuals
logr1 = polyval ( log1 , syear ) ;
res1 = log10 ( pop ) - logr1 ;
subplot(2 ,2 ,2)
plot( year , res1 , 'r*' )
title( 'Plot of Residuals' )
ylabel ( 'Residuals ( in millions )' )
xlabel ( 'Year' )
set( gca () , 'grid' ,[1 1])
//Exponential Fit 4 degree polynomial
log1 = polyfit ( syear , log10 ( pop ) ,4) ;
logr1 = 10.^ polyval ( log1 , syear ) ;
subplot (2 ,2 ,3)
title( 'Plot of Exp Fit' )
plot2d("oll" , year ,[ logr1 pop ])
ylabel ( 'Population ( in millions )' )
xlabel ( 'Year' )
set( gca () , 'grid' ,[1 1])
//Analyzing the residuals
logr1 = polyval ( log1 , syear ) ;
res1 = log10 ( pop ) - logr1 ;
subplot (2 ,2 ,4)
plot ( year , res1 , 'r*' )
title ( 'Plot of Residuals' )
ylabel ( 'Residuals ( in millions )' )
xlabel ( 'Year' )
set ( gca() , 'grid' ,[1 1])
// %Error Bound
