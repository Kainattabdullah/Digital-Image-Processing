Segmentation
% Read the input image
image = imread('flamingos.jpg');
 
% Convert the image to the L*a*b* color space
labImage = rgb2lab(image);
 
% Reshape the image into a 2D matrix
reshapedImage = reshape(labImage, [], 3);
 
% Perform k-means clustering
numClusters = 3; % Specify the desired number of clusters
[clusterIndices, clusterCenters] = kmeans(reshapedImage, numClusters);
 
% Reshape the cluster indices back to the original image size
segmentedIndices = reshape(clusterIndices, size(image, 1), size(image, 2));
 
% Create a color map for the segments
colorMap = rand(numClusters, 3); % Generate random colors for each segment
 
% Create a segmented image using the color map
segmented = zeros(size(image));
for i = 1:numClusters
    mask = segmentedIndices == i;
    segmented(:, :, 1) = segmented(:, :, 1) + mask .* colorMap(i, 1);
    segmented(:, :, 2) = segmented(:, :, 2) + mask .* colorMap(i, 2);
    segmented(:, :, 3) = segmented(:, :, 3) + mask .* colorMap(i, 3);
end
 
% Display the original and segmented images
figure;
subplot(1, 2, 1);
imshow(image);
title('Original Image');
subplot(1, 2, 2);
imshow(segmented);
title('Segmented Image');

 
Region Based segmentation
% Read the input image
image = imread('flamingos.jpg');
 
% Convert the input image to double precision
image = im2double(image);
 
% Define the region of interest (ROI)
roi = roipoly(image);
 
% Create a filter (e.g., a Gaussian filter)
filter = fspecial('gaussian', [5 5], 2);
 
% Apply the filter within the ROI
filteredImage = image;
filteredImage(roi) = imfilter(image(roi), filter);
 
% Display the original and filtered images
subplot(1, 2, 1);
imshow(image);
title('Original Image');
 
subplot(1, 2, 2);
imshow(filteredImage);
title('Filtered Image');

 
 

