im1 = imread('1.jpg');

picturenumber = 1; %ͼƬ��� ��ȡ��һ�ŵ�ʱ��ǵø�һ��

imshow(im1);
[x,y]=ginput(12); %��Ҫ�Ƕ���x�� �߶�����ν ÿ���ַ����������˸����һ�� 6��2��һ��12��
for i = 1:6
    charstart=x(2*i-1);
    charend=x(2*i);
    namestr = 'img'+string(picturenumber)+'-'+string(i)+'.jpg';
    namechar = char(namestr);
    imwrite(im1(:,charstart:charend,:),namechar); 
end
