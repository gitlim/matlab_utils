function export2web(web_dir, filename, ims)
% Helper function to write a cell array of images to the target directory
%


    for i = 1:length(ims)
        if size(ims{i},3)==3
            imwrite(ims{i}, sprintf('%s%d_%d.png', web_dir, filename, i));
        elseif size(ims{i},3)==1
            imwrite(ims{i}, sprintf('%s%d_%d.png', web_dir, filename, i));
        end
    end
end