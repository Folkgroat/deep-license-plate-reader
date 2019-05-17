function charnumber = picturesegwithhisteq(a,picturenumber)
im1resize = imresize(a,[100,300]);
im1double=im2double(im1resize);
im1gray= rgb2gray(im1double);
im1gray=histeq(im1gray);
im1bw=imbinarize(im1gray);


imsee=uint8(zeros([1,300]));
for col = 1:300
    for row = 1:100
        if (im1bw(row,col)==1)
            imsee(col)=imsee(col)+1;
        end
    end
end
implot = uint8(zeros(100,300));
im1bw=~im1bw;
for col = 1:300
    count = imsee(col);
    if (count ~= 0)
    flag = count;
    pos = 1;
        while (flag~=0)
            implot(pos,col)=255;
            pos = pos+1;
            flag = flag-1;
        end
    end
end


charcount = 0;
thresh=100;
while (charcount~=6) && (thresh>=50)    
    startindex = 0;
    endindex = 0;
    isinchar = 0;
    charcount = 0;
    thresh = thresh - 1;
    for i = 1:300
        if (isinchar==0)&&(imsee(i)<thresh)
            isinchar = 1;
            startindex=i;
        elseif (isinchar==1)&&(imsee(i)>=thresh)
            isinchar = 0;
            endindex=i;
            if ((endindex-startindex)>20)
                charcount= charcount+1;
            %namestr = 'img'+string(picturenumber)+'-'+string(charcount)+'.png';
            % namechar = char(namestr);
            %imwrite(im1resize(:,startindex:endindex,:),namechar);  
            end
        end
    end
    
end

startindex = 0;
endindex = 0;
isinchar = 0;
charcount = 0;

if (thresh == 50)
    thresh = 80;
end

for i = 1:300
    if (isinchar==0)&&(imsee(i)<thresh)
        isinchar = 1;
        startindex=i;
    elseif (isinchar==1)&&(imsee(i)>=thresh)
        isinchar = 0;
        endindex=i;
        if ((endindex-startindex)>20)%20
            charcount= charcount+1;
            namestr = 'img'+string(picturenumber)+'-'+string(charcount)+'.png';
            namechar = char(namestr);
            imwrite(im1resize(:,startindex:endindex,:),namechar);  
        end
    end       
end

charnumber=charcount;
end
