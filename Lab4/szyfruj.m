function S=szyfruj(N,K)

K=uint8(bin2dec(K));

for i=1:length(N)
    S(i)=char(bitxor(uint8(N(i)), K));
end