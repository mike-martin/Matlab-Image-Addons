function [] = exploresubfolders(name, directory, destDir)
%exploresubfolders Explores the subfolders of a directory and concaitnates
%names with a '_'. Once the bottom folder is found which contains jpg
%images, the contents are moved to the destination directory and renamed to
%reflect the subfolders.
    subFolds = getsubfolders(directory);
    if (isempty(subFolds) && ~isempty([directory '*.jpg']))
        copyfile(directory, [destDir '/' name])
    else
        for i=1:length(subFolds)
            exploresubfolders([name '_' subFolds{i}], [directory '/' subFolds{i}], destDir);
        end    
    end
end

