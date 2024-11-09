Histogram equalization
clc;
clear all;
 
% Read the image and convert it to grayscale
original_img = imread('C:\Users\Elot\OneDrive - Higher Education Commission\Desktop\Histogram.png');
original_img = rgb2gray(original_img);
 
% Compute the histogram of the original image
histogram = imhist(original_img);
histogram = histogram / numel(original_img);
 
% Compute the cumulative distribution function (CDF)
cdf = cumsum(histogram);
 
% Perform histogram equalization
equalized_img = uint8(255 * cdf(original_img + 1));
 
% Compute the histogram of the equalized image
equalized_histogram = imhist(equalized_img);
 
% Display the results
subplot(2,2,1);
imshow(original_img);
title('Original image');
 
subplot(2,2,2);
stem(histogram);
title('Histogram of the original image');
 
subplot(2,2,3);
imshow(equalized_img);
title('Image constructed using Equalized Histogram');
 
subplot(2,2,4);
stem(equalized_histogram);
title('Equalized Histogram');
