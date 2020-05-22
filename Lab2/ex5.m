clearvars;clc;
while true
    n=input('');
    if n==0
        break;
    end
    disp(mod(n,2)==0);
end
clearvars;