clc
function y1=dequation(x,y)
y1=(x-y)/(x+y)
endfunction
x(1)=0;
y(1)=1;
h=0.1;
a=0;
b=5;
n=round((b-a)/h)
for i=1:n
y(i+1)=y(i)+h*dequation(x(i),y(i));
x(i+1)=x(i)+h;
end
plot(x,y)
title('Euler method')
xlabel("input(X)")
ylabel("Output(Y)")
set(gca(),'grid',[1 1])

