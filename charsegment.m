list=dir(['E:\matlab\ENGN4528\project\ÇĞ¸îµÄÍ¼Æ¬\','*.png']);
path = 'E:\matlab\ENGN4528\project\ÇĞ¸îµÄÍ¼Æ¬\';
invalidresult=[];

for i = 1:178
    pathi = strcat(path,list(i).name);
    im = imread(pathi);
    charnumber = pictureseg(im,i);
    if charnumber~=6
        invalidresult=[invalidresult i];
        %invalidresult=[invalidresult charnumber];
    end
end


invalidresult2=[];
for i = invalidresult
    pathi = strcat(path,list(i).name);
    im = imread(pathi);
    charnumber = picturesegwithhisteq(im,i);
    if charnumber~=6
        invalidresult2=[invalidresult2 i];
        invalidresult2=[invalidresult2 charnumber];
    end
end