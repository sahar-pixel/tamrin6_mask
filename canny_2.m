clc; clear; close all;   %canny :Gy
img = rgb2gray(imread('photo.jpg'));
mask1 = [1,2,1;0,0,0;-1,-2,-1];
img2 = zeros(size(img),'uint8');
for i=2:size(img,1)-1
    for j=2:size(img,2)-1
        sum = 0;
        for x=1:3
            for y=1:3
                sum = sum + (img(i+x-2,j+y-2)*mask1(x,y));
            end
        end
        img2(i,j) = sum;
    end
end
imshow(img);figure;imshow(img2);
