clc;
clear all;
alpha=5; %alpha控制水印的强度
watermarkImpath=['C:\Users\xpz\Desktop\哈.bmp';'C:\Users\xpz\Desktop\工.bmp';'C:\Users\xpz\Desktop\大.bmp'];%待嵌入的三幅图像3*48*48
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';%原图像
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif';%嵌入水印后的图像的存储路径
sourceimage=imread(sourceImagepath);
for i=1:3;
    watermarkIm(:,:,i)=imread(watermarkImpath(i,:));
end
% figure()
% for i=1:3
% subplot(1,3,i);
% imshow(watermarkIm(:,:,i));
% end
watermarkedIm=watermarkEmbed(sourceimage,watermarkIm,alpha); 
imwrite(watermarkedIm,watermarkedpath);
imshow(watermarkedIm);



