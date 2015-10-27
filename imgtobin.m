%take image input%
img = imread('Rubber Sheet/iris1.bmp');
%converting to bin%
to_bin = dec2bin(img);
out_bin =reshape(to_bin,1,numel(to_bin));
out_bin = out_bin(100000:200000);
file = fopen('bin.txt','W');
fprintf(file,out_bin);
fclose(file);