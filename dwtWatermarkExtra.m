clc;
clear all;
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';  %原图像路径
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif'; %待提取图像路径
sourceimage=imread(sourceImagepath);
watermarkedimage=imread(watermarkedpath);
wmExtra=watermarkExtra(watermarkedimage,sourceimage);
%画出提取出的水印图像
figure();
for i=1:3
    subplot(1,3,i);
    imshow(wmExtra(:,:,i));
end