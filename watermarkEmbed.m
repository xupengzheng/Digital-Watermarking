function watermarkedIm=watermarkEmbed(sourceimage,watermarkIm,alpha)
source_rgb=sourceimage;
source_ycbcr = rgb2ycbcr(source_rgb);
source_grey=source_ycbcr(:,:,1);
sizeWm=size(watermarkIm);
walsh=hadamard(4);
for i=1:3
    wm_seq(i,:)=walshcode(watermarkIm(:,:,i),walsh(i+1,:));
end
[C, S]=wavedec2(source_grey,2,'db9');
for i=1:sizeWm(3)
    for j=(S(1,1)*S(1,2)+1):1:(S(1,1)*S(1,2)+length(wm_seq(i,:)))
        C(j)=C(j)+alpha*wm_seq(i,j-S(1,1)*S(1,2));
    end
end
im_rec=waverec2(C,S,'db9');
source_ycbcr(:,:,1)=im_rec;
watermarkedIm=ycbcr2rgb(source_ycbcr);




