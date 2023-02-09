clear,clc
fprintf('Start');
load C:\Users\Administrator\Desktop\matlabdata\testdata.csv
load C:\Users\Administrator\Desktop\matlabdata\randomtraindata.csv
%load data from dataset
%%
XTrain = randomtraindata(:,2:end);
YTrain = randomtraindata(:,1);
XTest = testdata(:,2:end);
YTest = testdata(:,1);
XTrain = normalize(XTrain);
XTest = normalize(XTest);
%%
class = fitcknn(XTrain,YTrain,'NumNeighbors',3 ...
    );
PTrain=predict(class,XTest);
PTrain=categorical(PTrain);
YTest=categorical(YTest);
acc = mean(PTrain==YTest);

fprintf('Finnish');




