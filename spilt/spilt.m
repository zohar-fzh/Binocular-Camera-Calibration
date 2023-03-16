clear;

for index = 1:10
    count=0;
    inputPath='./input/';
    outputPath='./output/';
    a='';
    b=string(index);
    c='.jpg';
    
    while(index ~= 0)
        index = fix(index/10);
        count=count+1;
    end
    switch count
        case 1 
            a='IMG_000';
        case 2 
            a='IMG_00';
    end
            
    inputName=strcat(inputPath,a,b,c);
    A=imread(char(inputName)); %读取原图
    [m,n,~]=size(A);   %读取原图尺寸，原图为三通道
    n1=n/2;
    picture_1=rgb2gray(A(:,1:n1,:));
    picture_2=rgb2gray(A(:,n1+1:n,:));

    name_out_l=strcat(outputPath,'l/',a,b,'_l',c);
    name_out_r=strcat(outputPath,'r/',a,b,'_r',c);
    imwrite(picture_1,name_out_l);
    imwrite(picture_2,name_out_r);
end