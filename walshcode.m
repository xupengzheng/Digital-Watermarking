function w=walshcode(watermarkIm,walsh)
w=[];
seqori=reshape(watermarkIm,1,[]);
for i=1:length(seqori)
    w=[w,(2*seqori(i)-1)*walsh];
end
    
