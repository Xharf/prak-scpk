function [Mdl,table] = WaterPotability()
table = readtable('water_potability.csv');
R = rmmissing(table);
X = R{:,[1,3:9]};
Y = R{:,10};

Mdl = fitcknn(X,Y,'NumNeighbors',15,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

%{
Mdl = fitcknn(X,Y,'NumNeighbors',5,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");
%}

%{
Mdl = fitcknn(X,Y,'NumNeighbors',35,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',41,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',43,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',47,...
    'NSMethod', 'exhaustive', 'Distance',...
    'cosin', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',5,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',15,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',35,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',41,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',43,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");

Mdl = fitcknn(X,Y,'NumNeighbors',47,...
    'NSMethod', 'exhaustive', 'Distance',...
    'mahalanobis', 'Standardize', 1);
CVMdl = crossval(Mdl, 'KFold',10);
kloss = kfoldLoss(CVMdl);
disp(kloss +"");
%}
end