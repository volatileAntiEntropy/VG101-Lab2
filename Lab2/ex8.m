clearvars;clc;
while true
    n=input('');
    if n==0
        break
    end
    disp(findM(n));
end
clearvars;

function m=findM(n)
    if mod(n,2)==1
        m=3;
    else
        m=2;
        while true
            if ~isPrime(n*m+1)
                break
            end
            m=m+1;
        end
    end
end

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