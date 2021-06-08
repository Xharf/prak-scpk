function [RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)
    indeksAcak = [1.9 1.8 2 1.5 1.8 1.5 0.25 0.125 0.8 1.49];
    [op, jumlahKriteria] = size(relasiAntarKriteria);
    [opp, lambda] = eig(relasiAntarKriteria);
    maksLambda = max(max(lambda));
    IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria-1);
    RasioKonsistensi = IndeksKonsistensi/indeksAcak(1,jumlahKriteria);

    if RasioKonsistensi > 0.10
        str = 'Rasio Konsistensi adalah %% %1.2f. Matriks yang dievaluasi tidak konsisten!';
        str = sprintf(str,RasioKonsistensi);
        disp(str);
    end
end
