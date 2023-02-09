clear,clc
fprintf('Start');
load C:\Users\Administrator\Desktop\matlabdata\testdata.csv
load C:\Users\Administrator\Desktop\matlabdata\randomtraindata.csv
%%

XTrain = randomtraindata(:,2:end);
YTrain = randomtraindata(:,1);
XTest = testdata(:,2:end);
YTest = testdata(:,1);
XTrain = normalize(XTrain);
XTest = normalize(XTest);
%%
t=fitctree(XTrain,YTrain);
%%
PTrain = predict(t,XTest);
%%
YTrain = categorical(YTest)';
acc = mean(PTrain == YTest);
fprintf('Finnish');
