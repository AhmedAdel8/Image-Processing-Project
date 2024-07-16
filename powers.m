function [ result ] = powers( img,gamma)
[H W L]=size(img);
result=zeros(H,W,L);
img=im2double(img);
result=im2double(result);
for i=1:H   
    for j=1:W
        if L==3
            result(i,j,1)=1*img(i,j,1)^gamma;
            result(i,j,2)=1*img(i,j,2)^gamma;
            result(i,j,3)=1*img(i,j,3)^gamma;
        else
            result(i,j)=1*img(i,j)^gamma;
        end
    end

end
img=im2uint8(img);
result=im2uint8(result);
end


