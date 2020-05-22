clearvars;clc;
vector=input('');
disp(bucketSort(vector));
clearvars;

function sorted=bucketSort(unsorted)
    sorted=zeros(1,length(unsorted));
    for i=1:length(unsorted)
        [minimum,index]=min(unsorted);
        sorted(i)=minimum;
        unsorted(index)=[];
    end
end