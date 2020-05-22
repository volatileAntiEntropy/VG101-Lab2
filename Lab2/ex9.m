clearvars;clc;
shortCharArray=char(string(input('')));
longCharArray=char(string(input('')));
if length(shortCharArray)>length(longCharArray)
    [shortCharArray,longCharArray]=swap(shortCharArray,longCharArray);
end
additionRegister=0;

for i=1:length(shortCharArray)
    tempRegister=uint8(str2double(shortCharArray(end-i+1))+str2double(longCharArray(end-i+1))+additionRegister);
    if tempRegister>=10
        additionRegister=1;
        tempRegister=tempRegister-10;
    else
        additionRegister=0;
    end
    longCharArray(end-i+1)=num2str(tempRegister);
end

if additionRegister==1
    additionRegister=0;
    disp("1"+string(longCharArray));
else
    disp(longCharArray);
end

clearvars;

function [c,d]=swap(a,b)
    c=b;
    d=a;
end