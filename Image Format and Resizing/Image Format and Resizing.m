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

You can check all of the Formats in your folder
1.	Resize the image
% Read and resize the image
resizedImage = imresize(imread('C:/Users/kaina/OneDrive/Desktop/sample.jpg'), [600, 800]);

% Save the resized image
imwrite(resizedImage, 'C:/Users/kaina/OneDrive/Desktop/sample_resized.jpg');

2.	RGB To Gray
% Step 1: Read the original color image
colorImage = imread('C:/Users/kaina/OneDrive/Desktop/sample.jpg');

% Step 2: Convert the color image to grayscale
grayImage = rgb2gray(colorImage);

% Step 3: Save the grayscale image
imwrite(grayImage, 'C:/Users/kaina/OneDrive/Desktop/sample_gray.jpg');
disp('Grayscale image saved as sample_gray.jpg.');


  
3.	Gray to RGB
% Step 1: Read the grayscale image
grayImage = imread('C:/Users/kaina/OneDrive/Desktop/sample_gray.jpg');

% Step 2: Convert grayscale to RGB
rgbImage = cat(3, grayImage, grayImage, grayImage);

% Step 3: Save the RGB image
imwrite(rgbImage, 'C:/Users/kaina/OneDrive/Desktop/sample_rgb.jpg');
disp('RGB image saved as sample_rgb.jpg.');
   
