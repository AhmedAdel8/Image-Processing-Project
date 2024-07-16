function [ result ] = Erlang_Gamma_Noise( image,a,b )
[H W L]=size(image);
for i = 1:255
    pixels=round((((a.^b)*(i.^(b-1)))/(factorial(b-1)))*exp(-a*i)*H*W);
    for j = 1 :pixels
        r=ceil(rand(1,1)*H);
        c=ceil(rand(1,1)*W);
        image(r,c)=image(r,c)+i;
    end
end
for k=1:1 % normalization
        mn=min(min(image(:,:,k)));
        mx=max(max(image(:,:,k)));
        result(:,:,k)=((image(:,:,k)-mn)/(mx-mn))*255;

end
result=uint8(result);
end


