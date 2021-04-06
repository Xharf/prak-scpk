clc;
disp("Menampilkan segitiga pascal\n");
disp("==-------------------------==\n");

prompt = 'berapa level?: ';
n = input(prompt);

for line=1:n
   c = 1;
   for i=1:line
   fprintf("%d ",c);
    c=c*(line-i)/i;
   end
   fprintf("\n");
end