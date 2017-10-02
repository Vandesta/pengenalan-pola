function [newimg]=los(img)

% img=imread(img);
img=rgb2gray(img);
img=im2bw(img);
img=imresize(img,[88 88]);
% img=canny(img, 0.05, 0.15);
newimg=img;
end