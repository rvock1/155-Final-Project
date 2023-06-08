%bulge
img = imread('selfie2.jpg');
img = double(img) / 255;
size(img)

nrows = size(img,1);
ncols = size(img,2);
fill = 1;

[xi,yi] = meshgrid(1:ncols,1:nrows);

xt = xi - ncols/2;
yt = yi - nrows/2;
[theta,r] = cart2pol(xt,yt);

a = 10; 
rmax = max(r(:));
s1 = r + r.^3*(a/rmax.^2);

[ut,vt] = pol2cart(theta,s1);
ui = ut + ncols/2;
vi = vt + nrows/2;

ifcn = @(c) [ui(:) vi(:)];
tform = geometricTransform2d(ifcn);

I_barrel = imwarp(img,tform,FillValues=fill);
imshow(I_barrel)
saveas(gcf,'barrel.png')
%%
%bulge
img = imread('selfie2.jpg');
img = double(img) / 255;
size(img)

nrows = size(img,1);
ncols = size(img,2);
fill = 1;

[xi,yi] = meshgrid(1:ncols,1:nrows);

xt = xi - ncols/2;
yt = yi - nrows/2;
[theta,r] = cart2pol(xt,yt);

a = 1000; 
rmax = max(r(:));
s1 = r + r.^3*(a/rmax.^2);

[ut,vt] = pol2cart(theta,s1);
ui = ut + ncols/2;
vi = vt + nrows/2;

ifcn = @(c) [ui(:) vi(:)];
tform = geometricTransform2d(ifcn);

I_barrel = imwarp(img,tform,FillValues=fill);
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




