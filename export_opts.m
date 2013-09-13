function names = export_opts(opts)
    opts=struct2cell(orderfields(opts));
    
    names = [];
    for i = 1:length(opts)
        if isstruct(opts{i})
            names=[names '_' export_opts(opts{i})];
        else
            names=[names '_' num2str(opts{i})];
        end
    end
   
    if length(names)
        names(1) = [];
    end
end