function wmExtra=watermarkExtra(watermarkedIm,sourceimage)
length_n=48*48*4;
source_ycbcr = rgb2ycbcr(sourceimage);
watermarkedIm_ycbcr = rgb2ycbcr(watermarkedIm);
source_grey=source_ycbcr(:,:,1);
wmIm_grey=watermarkedIm_ycbcr(:,:,1);
[C1, S1]=wavedec2(source_grey,2,'db9');
[C2, S2]=wavedec2(wmIm_grey,2,'db9');
for j=(S1(1,1)*S1(1,2)+1):1:(S1(1,1)*S1(1,2)+length_n)
    deltaS(j-S1(1,1)*S1(1,2))=C2(j)-C1(j);
end
seq=walshdecode(deltaS);
for i=1:length(seq(:,1))
    for j=1:length(seq(1,:))
        if seq(i,j)>0
            seq(i,j)=255;
        else
            seq(i,j)=0;
        end
    end
end
m=reshape(seq,3,48,48);
for i=1:3
    wmExtra(:,:,i)=m(i,:,:);
end




