A=-6:0.1:6; 
i=1;  

figure;
while i <= length(A)
    y=A.^4-9*A.^2;
plot(A,y); 
hold on; 
i=i+1; 
end 
grid on;
xlabel('Sumbu X'), ylabel('sumbu Y');
