function [theBest] = BestUniversity()
    opt = detectImportOptions('cwurData.csv');
    opt.SelectedVariableNames = {
    'national_rank', 'quality_of_education', 'alumni_employment', 'quality_of_faculty', 'publications', 'influence', 'citations', 'patents'
    };
    training = readtable('cwurData.csv', opt);
    disp ('sample input table (row 1:10): ');
    disp(training(1:10,:));
    training = table2array(training);

    opt.SelectedVariableNames = {'institution'};
    univ = readtable('cwurData.csv', opt);

    univ = table2array(univ);
    keuntungan = [0,0,0,0,0,0,0,0];
    weight = [0.1,0.25,0.1,0.1,0.1,0.05,0.1,0.2];

    %normalisasi matriks
    [m, n]=size (training); %matriks m x n dengan ukuran sebanyak variabel x (input)
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
    disp('hasil penjumlahan setiap feature terhadap bobot setiap univ (random pick)');
    disp(V(i1:idx+1));
    disp('Univ dengan value total tertinggi: ');
    
    disp("Nama univ: " + univ(idx));
    disp("dengan nilai: " + value);
    theBest = univ(idx);
    disp(' ');
    disp("dengan normalisasi matrix: ")
    disp(R(idx,:));
    
    disp("dengan nilai per feature berdasar (Weight * matrix ternormalisasi): ");
    disp(weight.*R(idx,:));
end
