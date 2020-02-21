clc 
clear all

k = 100;
m = 20;
w = sqrt(k/m);
A = 5;
x = A;
y = 0;
dt = 0.05;
T = (2*pi)/w;
v = 0;
t = 0;
a = 0;

while (t<=T)
  a = (-k*x)/m;
  v += a*dt;
  x += v*dt;
  t += dt;
  
  plot(t,x,'r*'); hold on;
  axis([0 T -A*w-0.5 A*w+0.5]);
  pause(0.001);
  

  y = A*cos(w*t);
  plot(t,y,'b*'); hold on;
  axis([0 T -A*w-0.5 A*w+0.5]);
  legend('Numerical Solution','Analityical Solution',num2str(t),num2str(t));  
endwhile


  