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

function result=evenMultipleMagicSquare(n)
    square=1:n^2;
    square=reshape(square,n,n)';
    result=square;   
    for i=1:n/4
        for j=1:n/4
            subMatrix=generateSubMatrix(square,i,j);
            for k=1:4
                subMatrix(k,k)=n^2+1-subMatrix(k,k);
                subMatrix(k,5-k)=n^2+1-subMatrix(k,5-k);
            end
            result((4*i-3):(4*i),(4*j-3):(4*j))=subMatrix;
        end
    end
end

function subSquare=generateSubMatrix(square,i,j)
    subSquare=square((4*i-3):(4*i),(4*j-3):(4*j));
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
