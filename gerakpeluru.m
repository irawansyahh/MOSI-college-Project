# initialization
x = 0;                                 		# initial x position
y = 0;                                 		# initial y position
v0 = 20;                               		# initial velocity
angle = 60;                            		# initial angle
angle_rad = (angle/360)*(2*pi);           # convert degree to radian
g = -9.8;                              		# gravity acceleration
t = 0;                                 		# time
dt = 0.01;                             		# tim

# velocity for x and y axis
vx = v0 * cos(angle_rad);
vy = v0 * sin(angle_rad);

figure;
# update
while y >= 0
    vx = vx;
    vy = vy + g*dt;
    y  = y + vy*dt;
    x  = x + vx*dt;
    t  = t + dt;
    if y < 0;
        break;
    end
    x_ex = v0 * cos(angle_rad)*t;
    y_ex = (0.5*g*t^2)+(v0*sin(angle_rad)*t);
    
    subplot(1,2,1);
    plot(x_ex,y_ex,'bo');hold on;
    pause(0.00005);
    xlabel('x[m]');ylabel('y[m]');title(['Analytical Solution at t=',num2str(t),'s']);
    axis([0 50 0 20]);
    %plot(x,y,'o');
    %hold on;
    %pause(0.5);
 end