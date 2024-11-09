close all;
 
in1 = imread('cameraman.tif');
in2 = im2double(in1);
 
% High-pass filter
highpass_kernel = [0 -1 0; -1 5 -1; 0 -1 0]; % eliminating low frequencies  
highpass_kernel_fft = fft2(highpass_kernel, size(in2, 1), size(in2, 2));
 
% Low-pass filter
lowpass_kernel = ones(5) / 25; % eliminating high frequencies  
lowpass_kernel_fft = fft2(lowpass_kernel, size(in2, 1), size(in2, 2));
 
% Convert image to frequency domain
in2_fft = fft2(in2);
 
% Apply high-pass filter in frequency domain
highpass_filtered_fft = in2_fft .* highpass_kernel_fft;
highpass_filtered = ifft2(highpass_filtered_fft);
 
% Apply low-pass filter in frequency domain
lowpass_filtered_fft = in2_fft .* lowpass_kernel_fft;
lowpass_filtered = ifft2(lowpass_filtered_fft);
 
% Display output images
figure;
subplot(1, 3, 1); imshow(in1); title('Original Image');
subplot(1, 3, 2); imshow(real(highpass_filtered)); title('High-Pass Filtered Image');
subplot(1, 3, 3); imshow(real(lowpass_filtered)); title('Low-Pass Filtered Image');




 

Non Linear/Denoising 
clc
close all
clear all
 
in = imread('F:\BS Classes\NTU\marguerite-729510_640.jpg');
 
% Convert the image to grayscale
in_gray = rgb2gray(in);
 
% Add salt and pepper noise
n = imnoise(in_gray, 'salt & pepper', 0.2);
 
% Apply median filtering
g = medfilt2(n);
 
% Display the noisy image and filtered image
figure, imshow(n);
title('Noisy Image');
 
figure, imshow(g);
title('Filtered Image (Median)');

 

Laplacian
clc
clear all
close all
 
in=imread('F:\BS Classes\NTU\marguerite-729510_640.jpg');
[r,c]=size(in);
in1=im2double(in);
w1=[1 1 1 ; 1 -8 1; 1 1 1];
g1=imfilter(in,w1,'conv');
 
g2=in-g1;
 
figure,imshow(in,[]);
figure,imshow(g1,[]);
figure,imshow(g2,[]);

 


Weighted Average
clc
clear all
close all
% Read the two input images
image1 = imread('F:\BS Classes\img1.jpg');
image2 = imread('F:\BS Classes\img2.jpg');
% Convert the images to double precision
image1 = im2double(image1);
image2 = im2double(image2);
% Define the weighting factor for each image
weight1 = 0.6;  % Weight for image1
weight2 = 0.4;  % Weight for image2
% Apply the weighted filter
filtered_image = weight1 * image1 + weight2 * image2;
% Display the original images
figure;
subplot(1, 3, 1);
imshow(image1);
title('Original Image 1');
subplot(1, 3, 2);
imshow(image2);
title('Original Image 2');
% Display the filtered image
subplot(1, 3, 3);
imshow(filtered_image);
title('Weighted Filtered Image');

 
