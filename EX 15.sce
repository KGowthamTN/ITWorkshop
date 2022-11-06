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
xn=x(i)
yn=y(i)
k1=h*dequation(xn,yn)
k2=h*dequation(xn+h/2,yn+k1/2)
k3=h*dequation(xn+h/2,yn+k2/2)
k4=h*dequation(xn+h,yn+k3 )
y(i+1)=yn+(1/6)*(k1+2*k2+2*k3+k4)
x(i+1)=xn+h;
end
plot(x,y)
xlabel("input(X)")
ylabel("Output(Y)")
set(gca(),'grid',[1 1])
