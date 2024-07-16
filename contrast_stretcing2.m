function [new_img]= contrast_stretcing2(img)
num_bit=2;
[h,w,l]=size(img);
if l==3
    img = rgb2gray(img);
end
    img = im2double(img);
    old_max = max(img(:));
    old_min =min(img(:));
    new_max = 2^num_bit-1;
    new_min = 0;
    [h,w]=size(img);
    new_img = zeros(h,w);
    new_img = im2double(new_img);
    for i=1:h
        for j=1:w
            new_img(i,j)= ((img(i,j)-old_min)./(old_max-old_min))*(new_max-new_min)+new_min;
        end
    end
    
    new_img =im2uint8(new_img);
   
end

