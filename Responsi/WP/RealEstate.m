%buat option kolom mana yang akan digunakan
opt = detectImportOptions('real_estate.csv');
opt.SelectedVariableNames = {'X2_house_age',...
    'X3_distance_to_the_nearest_MRT_station',...
    'X4_number_of_convenience_stores',...
    'Y_house_price_of_unit_area'};

% baca file dan ambil hanya kolom
% yang disertakan dalam option
data = readtable('real_estate.csv', opt);
data = table2array(data);

% daftar bobot setiap feature
% lebih besar = lebih penting
w = [3, 5, 4, 1];

% penetuan apakah keuntungan atau cost
k = [0, 1, 1, 0];

% #1. normalisasi bobot 
[m n]=size (data); %inisialisasi ukuran data
w=w./sum(w); %normalisasi

% #2. perhitungan vektor(S) per baris
for j=1:n,
    if k(j)==0, w(j)=-1*w(j);
    end
end

for i=1:m
    S(i)=prod(data(i,:).^w);
end

% Value dari data tiap baris
V = S/sum(S);

for i = 1 : 50
   disp(V(i)+""); 
   end
