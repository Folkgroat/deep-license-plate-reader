im1 = imread('10.jpg');

imshow(im1);
[x,y]=ginput(4);   %�������� �������� ���� ���� ���µ�˳����4����


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
imshow(im1(plateYstart:plateYend,plateXstart:plateXend,:))  %�˶�����Ƿ����� ��������

imwrite(im1(plateYstart:plateYend,plateXstart:plateXend,:),'1.jpg');  %��������ּǵø�һ��
