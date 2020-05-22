clearvars;clc;
inputNumbers=[];index=1;
while true
    n=input('');
    if n==0
        break;
    end
    inputNumbers(index)=n;
    index=index+1;
end
disp(numel(inputNumbers)~=numel(unique(inputNumbers)));
clearvars;