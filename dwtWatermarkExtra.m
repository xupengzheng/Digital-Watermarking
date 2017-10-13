clc;
clear all;
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';
%watermarkedpath2='C:\Users\xpz\Desktop\lena_std_watermarked_30.jpf';
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif';
sourceimage=imread(sourceImagepath);
watermarkedimage=imread(watermarkedpath);
cc =imread(watermarkedpath);
J = imnoise(cc,'gaussian',0,0.01);
imshow(J);
%wmExtra1=watermarkExtra(watermarkedimage,sourceimage);
wmExtra2=watermarkExtra(J,sourceimage);
% figure();
% for i=1:3
%     subplot(1,3,i)
%     imshow(wmExtra1(:,:,i));
% end
figure();
for i=1:3
    subplot(1,3,i);
    imshow(wmExtra2(:,:,i));
end