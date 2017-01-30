function [ folds ] = getsubfolders( directory )
%getsubfolders Returns the subfolders of a given directory
    d = dir(directory);
    isub = [d(:).isdir];
    folds = {d(isub).name}';
    folds(ismember(folds,{'.','..'})) = [];
end

