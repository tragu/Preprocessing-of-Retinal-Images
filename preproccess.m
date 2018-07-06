%read image
I=imread('01_test.tif');
imshow(I)
%convert to gray
%img=rgb2gray(I);
img=I(:,:,2);
figure
imshow(img)
%calculate mean
mean=mean2(img);
%remove offset of image by subtraction
I=img-mean;
figure
imshow(I)
%apply a 3x3 mean filter 
%Mean filtering is a simple, intuitive and easy to
%implement method of smoothing images, i.e. reducing the amount of intensity 
%variation between one pixel and the next. It is often used to reduce noise in images
f=(1/9).*ones(3,3);
g=imfilter(I,f);
figure
imshow(g)
%apply a 5x5 median filter does better job than mean
b=medfilt2(I,[5 5]);
figure
imshow(b)
%histogram operations
figure
imhist(img)
d=histeq(img);
figure, imshow(d)
figure ,imhist(d)
