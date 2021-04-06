%day = count(df,mf,yf,de,me,ye)
clc;
disp("Hitung Hari\n");
disp("==-------------------------==\n");

disp("Tanggal awal");
prompt = 'hari: ';
df = input(prompt);
prompt = 'bulan: ';
mf = input(prompt);
prompt = 'tahun: ';
yf = input(prompt);

disp("Tanggal akhir");
prompt = 'hari: ';
de = input(prompt);
prompt = 'bulan: ';
me = input(prompt);
prompt = 'tahun: ';
ye = input(prompt);

day = count(df,mf,yf,de,me,ye);
fprintf("Jumlah selisih hari: %d hari\n",floor(day));
function c = count(df,mf,yf,de,me,ye)
    monthDays = [31 28 31 30 31 30 31 31 30 31 30 31 ];
    n1 =yf*365+df;
   
    for i=1:mf-1
       n1 = n1 + monthDays(i);
    end
    cl=countLeapYear(mf,yf);
    n1 = (n1+cl);
    n2 =ye*365+de;

    for i=1:me-1
       n2 = n2 + monthDays(i);
    end
    cl = countLeapYear(me,ye);
    n2 = (n2+cl );
    c = n2-n1;
end

function cy =countLeapYear(m,y)
    year = y;
    if (m<=3)
       year= y-1; 
    end

 cy = (year/4) - (year/100) + (year/400);
end

