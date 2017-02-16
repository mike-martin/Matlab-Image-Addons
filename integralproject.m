function [ integral ] = integralproject( img, ang )
%INTEGRALPROJECT Compute integral projection of a image.
% B = integralproject(IMAGE, ANGLE) Calculates the integral projection of 
% a grayscale image img at a given angle ang, with 0 degrees being the vertical 
% projection and 90 degrees being the horizontal projection.
rotate = imrotate(img, ang, 'loose');
integral = sum(rotate,2);
end

