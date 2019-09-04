X=imread('autumn.tif');
[ m,n,d]=size(X)
%imshow(X);

figure;

%COMPOSANT ROUGE
R = zeros(m,n,d);
R(:,:,1) = X(:,:,1);
subplot(1,3,1),imshow(uint8(R)),title('Composant Rouge');

%COMPOSANT VERT
V = zeros(size(X));
V(:,:,2) = X(:,:,2);
subplot(1,3,2),imshow(uint8(V)),title('Composant Vert');

%COMPOSANT BLEU
 B = zeros(size(X));
 B(:,:,3) = X(:,:,3);
 subplot(1,3,3),imshow(uint8(B)),title('Composant Blue');