function [binary] = RgbToBin(RGB)
gray=rgb2gray(RGB);
[H , W]=size(gray);
binary=zeros(H,W);
for i=1:H
    for j=1:W
        if gray(i,j)>=128
            binary(i,j)=1;
        else
            binary(i,j)=0;
        end
    end


end
binary=logical(binary);
imshow(binary)



