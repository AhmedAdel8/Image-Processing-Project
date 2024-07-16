function [image]=correlation(img)
filter =  1/49 *[1 1 1 1 1 1 1 ; 1 1 1 1 1 1 1 ; 1 1 1 1 1 1 1 ; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 ; 1 1 1 1 1 1 1; 1 1 1 1 1 1 1];
image = imfilter(img,filter);
imshow(image);
end
