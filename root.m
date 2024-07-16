function [ result ] = root( img)
[H W L]=size(img);
result=zeros(H,W,L);
img=im2double(img);
result=im2double(result);
for i=1:H   
    for j=1:W
        if L==3
            result(i,j,1)=sqrt(img(i,j,1));
            result(i,j,2)=sqrt(img(i,j,2));
            result(i,j,3)=sqrt(img(i,j,3));
        else
            result(i,j)=sqrt(img(i,j));
        end
    end

end
img=im2uint8(img);
result=im2uint8(result);
end


