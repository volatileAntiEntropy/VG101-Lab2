clearvars;clc;
score=uint16(input(''));
switch score
    case {95,96,97,98,99,100}
        disp('A+');
    case {90,91,92,93,94}
        disp('A');
    case {85,86,87,88,89}
        disp('A-');
    case {80,81,82,83,84}
        disp('B+');
    case {75,76,77,78,79}
        disp('B');
    case {70,71,72,73,74}
        disp('B-');
    case {67,68,69}
        disp('C+');
    case {65,66}
        disp('C');
    case {62,63,64}
        disp('C-');
    case {60,61}
        disp('D');
    otherwise
        disp('F');
end
clearvars;