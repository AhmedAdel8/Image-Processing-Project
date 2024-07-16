function [  ] = histogram_equalization( img )
[H,W,L]=size(img);
histo=zeros(256,1);
pr=zeros(256,1);
pr=double(pr);
sk=zeros(256,1);
result=uint8(zeros(H,W));
for i=1:H
    for j=1:W
        histo(img(i,j)+1)=histo(img(i,j)+1)+1; %nk
        pr(img(i,j)+1)= histo(img(i,j)+1)/(H*W); %pr=nk/mn
    end      
end
sum=0;
sum=double(sum);
for i=1:256
    sum=sum+pr(i);
    sk(i)=255*(sum); %L-1*sum >>255*sum
end
for i=1:H
    for j=1:W
        result(i,j)=sk(img(i,j)+1);
    end
end
bar(result);
end

