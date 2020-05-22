clearvars;clc;
for i=100:999
    if isDaffodil(i)
        disp(i);
    end
end
clearvars;

function flag=isDaffodil(n)
    charForm=char(string(n));
    sum=0;
    for character=charForm
        sum=sum+str2double(character)^length(charForm);
    end
    flag=(sum==n);
end