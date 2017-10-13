clc;
clear all;
alpha=5; %alpha用于控制嵌入强度
watermarkImpath=['C:\Users\xpz\Desktop\น.bmp';'C:\Users\xpz\Desktop\นค.bmp';'C:\Users\xpz\Desktop\ด๓.bmp'];%三幅二值水印图像，大小48*48
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';%原图像
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif';%加入水印后的图像的存储路径
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



