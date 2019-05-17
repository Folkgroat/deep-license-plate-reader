im1 = imread('10.jpg');

imshow(im1);
[x,y]=ginput(4);   %尽量对齐 按照左上 右上 左下 右下的顺序点击4个点


if y(1)>y(2)
    plateYstart=y(1);
else
    plateYstart=y(2);
end
if x(1)>x(3)
    plateXstart=x(1);
else
    plateXstart=x(3);
end
if y(3)<y(4)
    plateYend=y(3);
else
    plateYend=y(4);
end
if x(2)<x(4)
    plateXend=x(2);
else
    plateXend=x(4);
end
imshow(im1(plateYstart:plateYend,plateXstart:plateXend,:))  %核对输出是否满意 可以跳过

imwrite(im1(plateYstart:plateYend,plateXstart:plateXend,:),'1.jpg');  %输出的名字记得改一下
