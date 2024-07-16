function [ new_img ] = saltandpepper( img,ps,pp )
[h w l]=size(img);

num_of_salt=round(ps*w*h);
num_of_pepper=round(pp*w*h);

for i=1:num_of_salt
    row=ceil(rand(1,1)*h);
    column=ceil(rand(1,1)*w);
    img(row,column)=255;
end
for i=1:num_of_pepper
    row=ceil(rand(1,1)*h);
    column=ceil(rand(1,1)*w);
    img(row,column)=0;
end
new_img=img;
new_img=uint8(new_img);


end

