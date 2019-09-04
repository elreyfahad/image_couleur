%image rouge avec un carre jaune au milieu
Y = zeros(200,300,3);
Y(:,:,1)=255;
Y(50:150,100:200,2)=255;
Y(:,:,3)=1;
imshow(Y/255);