function [  ] = negative( img )
[H W ]=size(img);
for i=1:H
    for j=1:W
        img(i,j)=255-img(i,j);
    end
end
imshow(img);
end

