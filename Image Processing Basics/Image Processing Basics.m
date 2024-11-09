Check the directory of Matlab images
% Get the root directory of the MATLAB installation
rootDir = matlabroot;

% Get the root directory of the MATLAB installation
rootDir = matlabroot;

% Construct the path to the built-in images directory
imageDir = fullfile(rootDir, 'toolbox', 'images', 'imdata');

% Display the directory
disp(imageDir);

Visit the following link & create an account
https://matlab.mathworks.com/
1.	Read an image 
a=imread("lena.jpg");
imshow(a)

 
2.	Simple blank figure 
 figure()

3.	Uint 8 bit 
height = 600;
width = 480;
% Create a Blue image with uint8 intensity values
Blueimage = cat(3, uint8(0), uint8(0), uint8(255));
% Display the Blue image
image(Blueimage);
axis off; % Optional: turn off the axis if desired
 
4.	Uint 64 bit 

height = 128;
width = 480;
% Create a yellow image with uint64 intensity values
yellowImage = cat(3, uint64(18446744073709551615), uint64(18446744073709551615), uint64(0));
% Display the yellow image
image(yellowImage);
axis off; % Optional: turn off the axis if desired
 

5.	Uint 32 bit 

height = 128;
width = 480;
% Create a green image with uint32 intensity values
greenImage = cat(3, uint32(0), uint32(4294967295), uint32(0));
% Display the green image
image(greenImage);
axis off; % Optional: turn off the axis if desired
 
6.	 Data Type check

a=uint32( 4294967295);
b=uint16( 4294967295);
disp(a);
disp(b);

 
7.	Gray scale images
width = 200;
height = 150;
intensityValue = 128;
grayImage = uint8(ones(height, width) * intensityValue);
imshow(grayImage);
 

8.	show image into multiple colums 
a=imread('lena.jpg');
subplot(2,2,1);imshow(a)
subplot(2,2,2);imshow(a)
subplot(2,2,3);imshow(a)
subplot(2,2,4);imshow(a)
 
b=imread('/MATLAB Drive/DIP/Lec 1/v.jpeg');
c=imread('/MATLAB Drive/DIP/Lec 1/dd.PNG');
d=imread('/MATLAB Drive/DIP/Lec 1/s.PNG');
subplot(3,3,1);imshow(a)
subplot(3,3,2);imshow(b)
subplot(3,3,3);imshow(c)
subplot(3,3,4);imshow(d)
 
9.	Details of image 
imfinfo("/MATLAB Drive/lena.jpg")

 
10.	Size of the image
e=imread("/MATLAB Drive/DIP/Lec 1/hall.PNG")
size(e)
 
11.	Clear output
clc-> clear screen
             close all-> clear all figures  
 clear all-> variables clear
 clf -> clear current figure
CTRL+R comment, CTRL+T uncomment
12.	Change Image Format
% Step 1: Read the original image
originalImage = imread('C:/Users/kaina/OneDrive/Desktop/sample.jpg');

% Step 2: Save as PNG
imwrite(originalImage, 'C:/Users/kaina/OneDrive/Desktop/sample.png');
disp('Image format changed to PNG.');

% Step 3: Save as TIFF
imwrite(originalImage, 'C:/Users/kaina/OneDrive/Desktop/sample.tiff');
disp('Image format changed to TIFF.');

% Step 4: Save as GIF
% Convert to indexed image for GIF format
[imIndexed, colorMap] = rgb2ind(originalImage, 256); 
imwrite(imIndexed, colorMap, 'C:/Users/kaina/OneDrive/Desktop/sample.gif'); 
disp('Image format changed to GIF.');

% Step 5: Save as PDF
% Create a temporary figure to save as PDF without displaying
tempFig = figure('Visible', 'off'); % Create a figure that is not visible
imshow(originalImage);
title('Image saved as PDF');

% Save the figure as a PDF
print(tempFig, 'C:/Users/kaina/OneDrive/Desktop/sample.pdf', '-dpdf');
disp('Image format changed to PDF.');

% Close the temporary figure
close(tempFig);

% Step 6: Save as SVG
% Create an SVG file manually
svgFileName = 'C:/Users/kaina/OneDrive/Desktop/sample.svg';
fid = fopen(svgFileName, 'w');

% Write SVG header
fprintf(fid, '<?xml version="1.0" encoding="UTF-8"?>\n');
fprintf(fid, '<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d">\n', size(originalImage, 2), size(originalImage, 1));

% Write the image as a raster image in SVG format
fprintf(fid, '<image href="data:image/jpeg;base64,%s" width="%d" height="%d"/>\n', ...
    matlab.net.base64encode(im2uint8(originalImage(:))), size(originalImage, 2), size(originalImage, 1));

% Write SVG footer
fprintf(fid, '</svg>');
fclose(fid);

disp('SVG file created and saved.');

You can check all of the Formats in your folder
13.	Resize the image
% Read and resize the image
resizedImage = imresize(imread('C:/Users/kaina/OneDrive/Desktop/sample.jpg'), [600, 800]);

% Save the resized image
imwrite(resizedImage, 'C:/Users/kaina/OneDrive/Desktop/sample_resized.jpg');

14.	RGB To Gray
% Step 1: Read the original color image
colorImage = imread('C:/Users/kaina/OneDrive/Desktop/sample.jpg');

% Step 2: Convert the color image to grayscale
grayImage = rgb2gray(colorImage);

% Step 3: Save the grayscale image
imwrite(grayImage, 'C:/Users/kaina/OneDrive/Desktop/sample_gray.jpg');
disp('Grayscale image saved as sample_gray.jpg.');

15.	Gray to RGB
% Step 1: Read the grayscale image
grayImage = imread('C:/Users/kaina/OneDrive/Desktop/sample_gray.jpg');

% Step 2: Convert grayscale to RGB
rgbImage = cat(3, grayImage, grayImage, grayImage);

% Step 3: Save the RGB image
imwrite(rgbImage, 'C:/Users/kaina/OneDrive/Desktop/sample_rgb.jpg');
disp('RGB image saved as sample_rgb.jpg.');


