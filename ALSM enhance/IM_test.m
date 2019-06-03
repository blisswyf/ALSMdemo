%enhancement
%n:number of pixels contained in each superpixel
%T:enhancement effect adjustment factor 

clc;
clear all;
close all;

addpath(genpath('./'));
tic
I = im2double(imread('./data/street.bmp'));
figure,imshow(I)

T=6;
n=400;
result=IM(I,T,n);

figure,imshow(result)
%imwrite(result,'inverted_road.tif','tiff','Resolution',600);
toc