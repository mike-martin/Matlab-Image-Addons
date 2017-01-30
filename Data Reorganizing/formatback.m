
sourceDir = './TestDest';
destDir = './TestDest2';

folders = getsubfolders(sourceDir);
for i=1:length(folders)
    names  = strsplit(folders{i}, '__');
    newpath = [sprintf('%s/',names{1:end-1}),names{end}];
    copyfile([sourceDir '/' folders{i}], [destDir '/' newpath]);
end