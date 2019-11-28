function X = cn(I)

limiar = 0.005:0.015:0.53;

raio = 3;
im = zeros(2*raio+1,2*raio+1);im(raio+1,raio+1)= 1; bw = bwdist(im);
c = find(bw <= raio); N = length(c);

assin = CN_GrauRedeRaioTextura_Norm(I,limiar,raio);
hist = montaHistogramasRC(assin,N);
    
M = size(hist,1);
linha5 = []; linha6 = []; linha7 = [];    
for x=1:M
    stats = HistogramFeatures(hist(x,:));
    linha5 = [linha5 stats(5)];
    linha6 = [linha6 stats(6)];
    linha7 = [linha7 stats(7)];
end;
  
X = [linha5 linha6 linha7];