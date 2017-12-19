function [ img ] = imrotate_exif( img, info )
%IMROTATE_EXIF Rotate image to exif metadata
%   img = imrotate_exif( img, exif ) rotates image according to exif
%   orienation flag in metadata. Read exif by 
%   exif = imfinfo('/path/to/img.jpg')
if isfield(info, 'Orientation')
    if info.Orientation == 2
        img = fliplr(img);
    elseif info.Orientation == 3
        img = imrotate(img, 180);
    elseif info.Orientation == 4
        img = flipup(img);
    elseif info.Orientation == 5
        img = img';
    elseif info.Orientation == 6
        img = imrotate(img, -90);
    %elseif info.Orientation == 7
        %img = imrotate( what the hell is transverse )
    elseif info.Orientation == 8
        img = imrotate(img, 90);        
    end
end

