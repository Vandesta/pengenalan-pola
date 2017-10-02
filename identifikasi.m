 function [template]=identifikasi(img);

temp   = 'F:\semester 9\coba\data\';
files  = dir([ temp '*.jpg']);
m=struct2cell(files);

% for k=1:size(m,2)    
%     I = imread([temp m{1,k}]);
%     img = los(I);
%     img=canny(img, 0.05, 0.15);
% %     fitur   = ekstrakciri_4unit(img);
%     database{k,1} =  img
%     database{k,2} = 'Buah Andu'
%end
for k=1:size(m,2)    
    I = imread([temp m{1,k}]);
    img = los(I);
%     fitur   = ekstrakciri_4unit(img);
    img=canny(img, 0.05, 0.15);
    database{k,1} = img
    database{k,2} = 'Bunga Engkabang'
end
for k=12:size(m,2)    
    I = imread([temp m{1,k}]);
    img = los(I);
%     fitur   = ekstrakciri_4unit(img);
    img=canny(img, 0.05, 0.15);
    database{k,1} = img
    database{k,2} = 'Bunga Terong'
end
for k=33:size(m,2)    
    I = imread([temp m{1,k}]);
    img = los(I);
%     fitur   = ekstrakciri_4unit(img);
img=canny(img, 0.05, 0.15);
    database{k,1} = img
    database{k,2} = 'Uker Degok'
end


% Identifikasi penyakit
% a=uigetfile('*.jpg','buka file citra');
% a=imread(a);
a=imread('bunga terong8.jpg');
img=los(a);
img=canny(img, 0.05, 0.15);
jum_dbase=size(database,1);
min_beda=sum(abs(img-database{k,1}));
ind_min=1;
for i=2: jum_dbase
    beda =sum(sum(abs(img-database{i,1})));
    if beda<min_beda
        min_beda=beda;
        ind_min=i;
    end
end
display('nama tato tersebut adalah: ');
display(database(ind_min,2));
end