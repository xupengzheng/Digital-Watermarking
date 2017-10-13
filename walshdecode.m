function decoded_seq=walshdecode(seq)
walsh=hadamard(4);
mat=reshape(seq,4,[]);
for i=1:3
    decoded_seq(i,:)=walsh(i+1,:)*mat;
end