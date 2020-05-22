clearvars;clc;
n=input('Input an integer: ');
sumOfSequence=0;
for i=1:n
    sumOfSequence=sumOfSequence+i^3;
end
disp(sumOfSequence);
clearvars;