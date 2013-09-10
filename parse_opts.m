function opts = parse_opts(opts, default_opts)
    for i = 1:length(default_opts)/2
        if ~isfield(opts, default_opts{i*2-1})
            opts = setfield(opts, default_opts{i*2-1}, default_opts{i*2});
        end
    end

    fds = fieldnames(opts);
    for i = 1:length(fds)
        if sum(strcmp(default_opts(1:2:end), fds{i})) == 0
            error(['opts containing a non-existing option of [' fds{i} ']']);
        end
    end
end