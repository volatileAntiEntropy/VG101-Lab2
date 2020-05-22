clearvars;clc;
n=input('');
flag=isPrime(n);
disp(flag);

function flag=isPrime(n)
    if((n~=2 && mod(n,2)==0)||n<=1)
        flag=false;
        return;
    elseif (n==2||n==3)
        flag=true;
        return;
    end
    flag=true;
    for i=3:2:(n-2)
        flag=flag&&mod(n,i)~=0;
    end
end