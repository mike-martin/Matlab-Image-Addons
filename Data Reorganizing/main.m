sourceDir = './TestSource';
destDir = './TestDest';

rootFolds = getsubfolders(sourceDir);
for i=1:length(rootFolds)
    exploresubfolders(rootFolds{i}, [sourceDir '/' rootFolds{i}], destDir);
end