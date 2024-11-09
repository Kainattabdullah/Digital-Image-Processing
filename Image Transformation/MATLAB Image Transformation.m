
Task#1:   Implement negation transform.
Image negation is a transformation that changes the colors of an image to their opposite values. It's like taking a photo and inverting all the colors. For example, if a pixel in the original image is black, it will become white in the negated image, and vice versa
clc
clear all
clc

% negative image transform


in=imread('flower2.jpg');
gr=rgb2gray(in); %gray image
[r,c]=size(gr);
for i=1:r
for j=1:c
g(i,j)=255-gr(i,j);
end
end

figure
imshow(gr);

figure
imshow(g);

                   








Task#2:  Implement window transformation of a gray scale image.
 A window transformation, also known as a windowing function or a windowing technique, is a way to focus on a specific portion, or window, of an image. It involves applying a mathematical function to the pixels within the window while leaving the pixels outside the window unchanged. 
clc
clear all
close all
                                                                                                         
 
% window image transform
 
gr=imread('coins.png');
[r,c]=size(gr);
for i=1:r
    for j=1:c
            if((gr(i,j)>=0) && (gr(i,j)<=90))
                g(i,j)=200;
            else if((gr(i,j)>90) && (gr(i,j)<=150))
                g(i,j)=0;
                else
                    g(i,j)=10;
                end
            end
    end
end
 figure
 imshow(gr);                                                                                 
 figure
imshow(g);


                   
                                                                                                                
                                                          
                                                                                   
    

Task#3:   Implement logarithmic transform of a gray scale image.

 Logarithmic transformations are used to adjust the contrast of an image. They work by applying a logarithmic function to the pixel values. This transformation tends to enhance the details in the darker areas of the image while compressing the brighter areas. As a result, it can improve the visibility of fine details and bring out more information in the shadows.                                                                                                                
                                                                                 
clc
clear all                                                                   		
clf                                                     
in=imread('flower2.jpg');
gr=rgb2gray(in);
dima=im2double(gr);
%double image                                                                                                   
c=1;                                                                                              
g=c*log(1+dima); 
g1=im2uint8(g);                                                                                                                                                                                       
figure
imshow(gr);  
figure
imshow(g1);














Task#4:   Implement Power law transform of a  gray scale image.
                                                                                                                                                     
 Power law transformations, also known as gamma transformations, are used to adjust the overall brightness and contrast of an image. They involve raising the pixel values to a certain power. By adjusting the value of the power, you can control the degree of contrast enhancement or reduction. Lower values of the power (less than 1) increase the contrast, while higher values (greater than 1) decrease the contrast.                                                                             
                
clc
clear all
clf	
 




in=imread('flower2.jpg');
gr=rgb2gray(in);
dima=im2double(gr); %gray image
c=1;
y=4;
s=c*(dima).^y;                                                                                      
g1=im2uint8(s);                    
figure
imshow(gr);
figure
imshow(g1)

    

                                                                                        
     

                                                                                        




Task#5:   RGB TO Gray

 close all;
 clc;
 file=imread('/MATLAB Drive/download.jpeg');
 imshow(file)
% draw subplot
 subplot(2,1,1);
imshow(file);title("Original image")                               
% covert rgb to gray 
file2=rgb2gray(file);
subplot(2,1,2);
 imshow(file2);
title("Gray scale image");                
                                                                                                          



Task#6:  Image merging

i = imread("download.jpeg");
imshow(i)

i2 = imrotate(i, 90);
[i_height, i_width, ~] = size(i);  % Get the dimensions of i
i2_resized = imresize(i2, [i_height, i_width]);  % Resize i2 to match the size of i
figure;
imshow(i2_resized)

i3 = i + i2_resized;
figure;
imshow(i3)

 

Task#7: Change image format

image = imread("9.PNG");
imwrite(image, "new9.jpg");
Task#8: Multiply divide 

image_variable=imread('C:/daisy.jpg');

image_multiplication = immultiply(image_variable, 1.5);
image_division = imdivide(image_variable, 4);

subplot(2,2,1), imshow(image_variable); title('Original Image');
subplot(2,2,2), imshow(image_multiplication); title('Multiplied Image');
subplot(2,2,3), imshow(image_division); title('Dividied Image');
 
Task#9: image subtraction 

image_variable1=imread('C:/bottle1.jpg');
image_variable2 = imread('C:/bottle2.jpg');

subtracted_image = image_variable1-image_variable2;

subplot(1,3,1), imshow(image_variable1); title('First Image');
subplot(1,3,2), imshow(image_variable2); title('Second Image');
subplot(1,3,3), imshow(subtracted_image); title('Subtracted Image');

 
Task#10: Adding pixel values

image_variable=imread('C:/orange.jpg');

adding_50 = imadd(image_variable, 50);
adding_100 =  imadd(image_variable, 100);
adding_200 =  imadd(image_variable, 200);

subplot(2,2,1), imshow(image_variable); title('Original Image');
subplot(2,2,2), imshow(adding_50); title('After Adding 50');
subplot(2,2,3), imshow(adding_100); title('After Adding 100');
subplot(2,2,4), imshow(adding_200); title('After Adding 200');

 

Task#11: Up-Sampling
Up sampling, also known as interpolation, is a technique used to increase the resolution or size of an image. It involves adding new pixels between the existing pixels in an image to create a more detailed or larger version of the original image.

clear all;
close all;
clc;





f=imread('cameraman.tif');
[r,c]=size(f);
fup= f(1:0.5:r,1:0.5:c);
 
figure,imshow(f);
figure,imshow(fup);
   

Task#12: Down-Sampling
 Down sampling is the opposite of up sampling. It is a technique used to decrease the resolution or size of an image. It involves removing pixels from the original image to create a smaller version of the image.




clear all;
close all;
clc;
f=imread('cameraman.tif');
[r,c]=size(f);
fdown= f(1:2:r,1:2:c);
 
figure,imshow(f);
figure,imshow(fdown);

  

Task#13: Distance transform
The distance transform is a mathematical operation that calculates the distance of each pixel in an image from a specified set of pixels called the "foreground." It is typically used in image analysis and computer vision tasks, such as object recognition or shape analysis. 

clear all;
close all;
clc;
f=imread('blobs.png');
fb=im2bw(f);
d=bwdist(fb,'cityblock');
dneg=bwdist(~fb,'cityblock');
figure,imshow(f,[]);
figure,imshow(d,[]);
figure,imshow(dneg,[]);

   




Task#14: Bits Per Pixel

Bits per pixel (bpp) is a measure of the amount of information or data required to represent each pixel in an image. It indicates the level of color or grayscale depth of an image. For example, an 8-bit image can represent 256 different colors or shades of gray, while a 24-bit image can represent millions of colors. Generally, a higher bpp value means a higher level of detail and color fidelity in an image, but it also requires more storage space. The bpp value is an important consideration when working with images, as it affects file sizes, computational requirements, and the visual quality of the image.

clear all;
close all;
clc;
f=imread('cameraman.tif');
bit=input('Enterv no. of bits : ');
max=2^bit-1;
fbit=f*(max/255);
figure,imshow(f);
figure,imshow(fbit);

  









                       
