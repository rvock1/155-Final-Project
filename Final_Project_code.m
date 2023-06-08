%bulge
img = imread('selfie2.jpg');
img = double(img) / 255;
size(img)

m = size(img,1);
n = size(img,2);

[xi,yi] = meshgrid(1:n,1:m);

xt = xi - n/2;
yt = yi - m/2;
[theta,r] = cart2pol(xt,yt);

a = 10; 
r_max = max(r(:));
s = r + r.^3*(a/r_max.^2);

[ut,vt] = pol2cart(theta,s);
ui = ut + n/2;
vi = vt + m/2;

mapping = @(c) [ui(:) vi(:)];
transform = geometricTransform2d(mapping);

I_barrel = imwarp(img,transform,FillValues=fill);
imshow(I_barrel)
saveas(gcf,'barrel.png')
%%
%bulge
img = imread('selfie2.jpg');
img = double(img) / 255;
size(img)

m = size(img,1);
n = size(img,2);

[xi,yi] = meshgrid(1:n,1:m);

xt = xi - n/2;
yt = yi - m/2;
[theta,r] = cart2pol(xt,yt);

a = 10; 
r_max = max(r(:));
s = r + r.^3*(a/r_max.^2);

[ut,vt] = pol2cart(theta,s);
ui = ut + n/2;
vi = vt + m/2;

mapping = @(c) [ui(:) vi(:)];
transform = geometricTransform2d(mapping);

I_barrel = imwarp(img,transform,FillValues=fill);
imshow(I_barrel)
saveas(gcf,'barrel3.png')

%%
%xray

img = imread('selfie2.jpg');
img = double(img) / 255;
img = rgb2gray(img);

y=1-img;

imshow(y)
saveas(gcf,'xray.png')

%%




