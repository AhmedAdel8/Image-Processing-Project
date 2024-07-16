    function [] = inverse_fourier_transform(image)
f1  = fft2(image) ;
f2 = fftshift(f1);
n =abs(f2) ;
n= log(n+1) ;
n = mat2gray(n) ;
f3 = fftshift(f2);
f3 = ifft2(f3);
f3=abs(f3);
f3 = log(f3);
f3 = mat2gray(f3);
imshow(f3)
end

