function [ rms ] = ImageContrastRMS( img )
% ImageContrastRMS Computes RMS of image for contrast assesment.
%   Input can be RGB or Grayscale image with pixel intensities ranging from
%   0 - 255.
    [M, N, C] = size(img);
    img = double(img)/255;   
    Ibar = mean(img(:));
    I = (img-Ibar).^2;
    rms = sqrt(sum(I(:))/(M*N*C));
end
