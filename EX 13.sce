clc
x=[1 2 3 4 5];
a=1;
b=[1/4 1/4 1/4 1/4 1/4];
t=1:length(x);
y=filter(b,a,x);
plot(t,x,t,y);
xlabel("input(x)");
ylabel("Output(y)");
set(gca(),"grid",[1 1]);

