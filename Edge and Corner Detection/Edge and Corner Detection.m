 Canny edge 
clc 
clear all 
close all 
f1=imread('cameraman.tif'); 
f2=im2double(f1); 
t = graythresh(f2); 
f3 = edge(f2,'canny',t,'both'); 
figure  
imshow(f3); 
2. Sobal filter  
clc 
clear all 
close all  
%sobel edge detection filter 
f=imread('cameraman.tif');  
f1=im2double(f);  
w1h=[-1 -2 -1;0 0 0; 1 2 1]; 
w1v=[-1 0 1;-2 0 2;-1 0 1]; 
g1h=imfilter(f1,w1h,'replicate'); 
g1v=imfilter(f1,w1v,'replicate');  
figure,imshow(f1); 
figure,imshow(abs(g1h)); 
3. Roberts 
clc 
clear all 
close all 
%robert dge detection filter 
f=imread('cameraman.tif'); 
f1=im2double(f); 
w1h=[-1 0;0 1]; 
w1v=[0 -1;1 0]; 
g1h=imfilter(f1,w1h,'replicate'); 
g1v=imfilter(f1,w1v,'replicate'); 
figure,imshow(abs(g1h)); 
figure,imshow(abs(g1v)); 
4. Prewitt 
clc 
clear all 
close all 
%prewitt dge detection filter 
f=imread('cameraman.tif'); 
f1=im2double(f); 
w1h=[-1 -1 -1;0 0 0; 1 1 1]; 
w1v=[-1 0 1;-1 0 1;-1 0 1]; 
g1h=imfilter(f1,w1h,'replicate'); 
g1v=imfilter(f1,w1v,'replicate'); 
g=g1h+g1v; 
f3=g+f1; 
figure,imshow(f1); 
figure,imshow(abs(g1h); 
figure,imshow(abs(g1v)); 
figure,imshow(abs(f3)); 
5. Corner detection 
% Load the image 
image = imread('C:\Users\Elot\OneDrive - Higher 
Education Commission\Desktop\picture1.jpg'); 
grayImage = rgb2gray(image); 
% Compute the Harris corner response 
cornerResponse = cornermetric(grayImage); 
% Set threshold and detect corners 
cornerThreshold = 0.01 * max(cornerResponse(:)); 
cornerPoints = cornerResponse > cornerThreshold; 
[r, c] = find(cornerPoints); 
% Display the results 
imshow(image); 
hold on; 
plot(c, r, 'r+', 'MarkerSize', 5); 
title('Output');