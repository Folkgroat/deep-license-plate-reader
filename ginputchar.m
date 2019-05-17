im1 = imread('1.jpg');

picturenumber = 1; %图片编号 截取下一张的时候记得改一下

imshow(im1);
[x,y]=ginput(12); %主要是对齐x轴 高度无所谓 每个字符的左右两端各点击一次 6个2次一共12次
for i = 1:6
    charstart=x(2*i-1);
    charend=x(2*i);
    namestr = 'img'+string(picturenumber)+'-'+string(i)+'.jpg';
    namechar = char(namestr);
    imwrite(im1(:,charstart:charend,:),namechar); 
end
