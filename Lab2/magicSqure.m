clearvars;clc;
square5=uint64(oddMagicSquare(5));
outputFile=fopen("output.txt","w","n","UTF-8");
for i=1:5
    for j=1:5
        fprintf(outputFile,'%g\t',square5(i,j));
    end
    fprintf(outputFile,"\n");
end
fclose(outputFile);

function square=oddMagicSquare(n)
    square=zeros(n);
    coordinate=uint64([1,(n+1)/2]);
    element=1;
    while element<=n^2
        square(coordinate(1),coordinate(2))=element;
        previousCoordinate=coordinate;
        coordinate=interpreteCoordinate(move(-1,1,coordinate),n);
        if square(coordinate(1),coordinate(2))~=0
            coordinate=previousCoordinate;
            coordinate=interpreteCoordinate(move(1,0,coordinate),n);
        end
        element=element+1;
    end
end

function square=evenMultipleMagicSquare(n)
    square=[1:n^2];
    square=reshape(square,n,n)';
    for i=1:n/4
        subMatrix=square((1+4*(i-1)):(4*i),(1+4*(i-1)):(4*i));
        for j=1:4
            [c,r]=find(square==n^2+1-subMatrix(j,j));
            square(c,r)=subMatrix(j,j);
            subMatrix(j,j)=n^2+1-subMatrix(j,j);
            [c,r]=find(square==n^2+1-subMatrix(j,5-j));
            square(c,r)=subMatrix(j,5-j);
            subMatrix(j,5-j)=n^2+1-subMatrix(j,5-j);
        end            
        square((1+4*(i-1)):(4*i),(1+4*(i-1)):(4*i))=subMatrix;
    end
end

function result=move(x,y,coordinate)
    result=[coordinate(1)+x,coordinate(2)+y];
end

function new=interpreteCoordinate(old,n)
    new=old;
    for i=1:2
        if new(i)==0
            new(i)=n;
        elseif new(i)==n+1
            new(i)=1;
        end
    end
end
