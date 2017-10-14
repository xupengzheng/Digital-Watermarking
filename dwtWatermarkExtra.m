clc;
clear all;
sourceImagepath='lena_std.tif';  %原图像路径
watermarkedpath='lena_std_watermarked.tif'; %待提取水印的图像的路径
sourceimage=imread(sourceImagepath);
watermarkedimage=imread(watermarkedpath);
%watermarkedimage = imnoise(watermarkedimage,'gaussian',0,0.01); %可用该语句加高斯噪声干扰
wmExtra=watermarkExtra(watermarkedimage,sourceimage);
%显示提取出的三幅图像
figure();
for i=1:3
    subplot(1,3,i);
    imshow(wmExtra(:,:,i));
end