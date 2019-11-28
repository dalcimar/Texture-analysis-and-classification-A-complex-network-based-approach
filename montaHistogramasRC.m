function hist = montaHistogramasRC(assin,N)

[ny,nx] = size(assin);
hist = zeros(ny,N);

for y=1:ny
    for x=1:nx
        p = assin(y,x) + 1;
        hist(y,p) = hist(y,p) + 1;        
    end;
end;