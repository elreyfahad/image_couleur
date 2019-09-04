function Y=my_rgb2ycbcr(X)
% Convertit une image RGB renormalisee en image YCbCr renormalisee
[~,~,C]=size(X);

X=X*255;

A=[0.299 0.587 0.114;-0.1687 -0.3313 0.500;0.500 -0.4187 -0.0813];
b=[0;128;128];

Y=zeros(size(X));

for i=1:C
    Y(:,:,i)=b(i) + A(i,1)*X(:,:,1) + A(i,2)*X(:,:,2) + A(i,3)*X(:,:,3);
end

Y=Y/255;


end