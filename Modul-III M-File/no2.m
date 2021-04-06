figure;
x = linspace(-10,10,1000);

for i=1:length(x)
   y1 = sqrt(100+x.^2);
   y2 = sqrt(100+2*x.^2);
   y3 = sqrt(100+4*x.^2);
   y4 = sqrt(100+16*x.^2);
  
   plot(x,y1,x,y2,x,y3,x,y4);
   hold on;
end
grid on;
xlabel('sumbu x'), ylabel('sumbu y');
title('soal no 2')