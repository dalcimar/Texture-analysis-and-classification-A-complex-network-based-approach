function processaImagens

diretory = '..\Brodatz (Nsp)\';
X = [];

files = dir([diretory '*.png']);

for x=1:length(files)
    disp(files(x).name);

    %aquisiçao
    I = imread([diretory files(x).name]);
    
    %pre-processamento
    %I = rgb2gray(I);
    I = double(I);    
    
    %processamento
    tic
    X(x,:) = cn(I);
    toc
end

% Save
save cnBrodatzNsp X;


