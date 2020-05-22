clearvars;clc;
n=input('');
k=input('');
gamers=[1:n];
currentIndex=k;
while length(gamers)>1
    gamers(currentIndex)=[];
    currentIndex=interpreteIndex(k,length(gamers),currentIndex);
end
disp(gamers);
clearvars;

function trueIndex=interpreteIndex(k,length,index)
    trueIndex=mod(index+k-2,length)+1;
end