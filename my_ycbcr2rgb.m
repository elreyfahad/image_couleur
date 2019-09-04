function X=my_ycbcr2rgb(Y)
% Convertit une image YCbCr renormalisee en image RGB renormalisee
[~,~,C]=size(Y);

Y=Y*255;

A=inv([0.299 0.587 0.114;-0.1687 -0.3313 0.500;0.500 -0.4187 -0.0813]);
b=[0;128;128];

for i=1:C
    Y(:,:,i)=Y(:,:,i)-b(i);
end

X=zeros(size(Y));

for i=1:C    
    X(:,:,i)=A(i,1)*Y(:,:,1) + A(i,2)*Y(:,:,2) + A(i,3)*Y(:,:,3);
end

X=X/255;