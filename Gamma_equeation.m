function [NI] = Gamma_equeation(image,value)

[H,W,l]=size(image);
NI=ones(H,W,l);
image=im2double(image);
for i=1:H
    for j=1:W
         NI(i,j)=image(i,j)^value;
    end
end
end
