t = 0:0.01:2*pi;

x=1+cos(t);
y=2*sin(t);
z=1-cos(2*t);

plot3(x,y,z);
grid on;
xlabel('sumbu x'); ylabel('sumbu y'); zlabel('sumbu z');
title('No.3 fungsi tiga dimensi');