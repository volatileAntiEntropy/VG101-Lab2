clearvars;clc;
aRange=input('Input a range: ');
bRange=input('Input b range: ');
disp(computeTerms(aRange,bRange));
clearvars;

function termCount=computeTerms(aRange,bRange)
    %termCount=computeTerms(aRange,bRange)
    %aRange: 1x2 matrix, [aMin,aMax]
    %bRange: 1x2 matrix, [bMin,bMax]
    %termCount: numeric
    termCollection=containers.Map('KeyType','double','ValueType','uint8');
    for a=aRange(1):aRange(2)
        for b=bRange(1):bRange(2)
            termCollection(a^b)=1;
        end
    end
    termCount=length(termCollection);
end