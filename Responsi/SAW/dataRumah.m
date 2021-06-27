function [theBest] = dataRumah()
    opt = detectImportOptions('DATA_RUMAH.csv');
    opt.SelectedVariableNames = {
    'HARGA', 'LB', 'LT', 'KT', 'KM', 'GRS'};
    training = readtable('DATA_RUMAH.csv', opt);
    disp ('sample input table (row 1:10): ');
    disp(training(1:10,:));
    training = table2array(training);

    opt.SelectedVariableNames = {'NAMA_RUMAH'};
    rumah = readtable('DATA_RUMAH.csv', opt);
    rumah = table2array(rumah);
    
    
    keuntungan = [0,1,1,1,1,1];
    weight = [0.3,0.2,0.23,0.1,0.07,0.1];

    %normalisasi matriks
    [m, n]=size (training); 
    %matriks m x n dengan ukuran sebanyak variabel n (input)
    R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong

    for j=1:n
     if keuntungan(j)==1 %statement untuk kriteria dengan atribut keuntungan
      R(:,j)=training(:,j)./max(training(:,j));
     else
      R(:,j)=min(training(:,j))./training(:,j);
     end
    end


    disp('Bobot yang diberikan');
    disp(weight);
    disp ('matriks yang sudah ternomalisasi R (contoh 5 row pertama)=')
    disp (R(1:5,:));

    %tahapan kedua, proses perangkingan
    for i=1:m
     V(i)= sum(weight.*R(i,:));
    end
    
    [value, idx] = max(V);
    if(idx-10 > 1)
        i1 = idx-10;
    else
        i1 =1;
    end    
    
    disp('hasil penjumlahan setiap feature terhadap bobot setiap rumah (random pick)');
    disp(V(i1:idx+1));
    
   
    num = numel(V);
    for j = 0 : num-1
        for i = 1: num-j-1
            if V(i)<V(i+1)
                temp = V(i);
                V(i) = V(i+1);
                V(i+1) = temp;
                
                temp = rumah(i);
                rumah(i) = rumah(i+1);
                rumah(i+1) = temp;
            end
        end
    end

    disp('Rumah dengan value total tertinggi: ');
    
    for i = 1 : 20
        disp("Nama Rumah: " +  rumah(i));
        disp("dengan nilai: " + V(i));
    end
        
    theBest = rumah(1:20);
    disp(' ');
    disp("dengan normalisasi matrix: ")
    disp(R(idx,:));
    
    disp("dengan nilai per feature berdasar (Weight * matrix ternormalisasi): ");
    disp(weight.*R(idx,:));
end