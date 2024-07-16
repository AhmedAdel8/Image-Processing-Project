function [ new_img ] = RayLeigh_Noise( img,a,b )
[h w l]=size(img);
for i=1:255
     num_of_pixel=round(((2/b)*(i-a)*(exp(((i-a).^2)/b)))*w*h);
     for x=1:num_of_pixel
        row=ceil(rand(1,1)*h);
        column=ceil(rand(1,1)*w);
        img(row,column)=img(row,column)+i;
    end
end
for k=1:1 % normalization
        mn=min(min(img(:,:,k)));
        mx=max(max(img(:,:,k)));
        new_img(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;
end
new_img=uint8(new_img);

end

