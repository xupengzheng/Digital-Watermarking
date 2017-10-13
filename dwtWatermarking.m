clc;
clear all;
alpha=5;
watermarkImpath=['C:\Users\xpz\Desktop\นþ.bmp';'C:\Users\xpz\Desktop\นค.bmp';'C:\Users\xpz\Desktop\ด๓.bmp'];
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif';
sourceimage=imread(sourceImagepath);
for i=1:3;
    watermarkIm(:,:,i)=imread(watermarkImpath(i,:));
end
figure()
for i=1:3
subplot(1,3,i);
imshow(watermarkIm(:,:,i));
end
% watermarkedIm=watermarkEmbed(sourceimage,watermarkIm,alpha);
% imwrite(watermarkedIm,watermarkedpath);
% imshow(watermarkedIm);



