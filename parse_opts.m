function opts = parse_opts(opts, default_opts, simply_add)
% Given all default opts, check if opts has any non supported option and also set all option to
% default values if not set
%
% USAGE
%  default_opts = {'timelimit', 5, 'shouldrun', true};
%  opts.timelimit = 3;
%  opts = parse_opts(opts, default_opts);

    if nargin < 3
        simply_add = false;
    end

    for i = 1:length(default_opts)/2
        if ~isfield(opts, default_opts{i*2-1})
            opts = setfield(opts, default_opts{i*2-1}, default_opts{i*2});
        end
    end

    if ~simply_add
        fds = fieldnames(opts);
        for i = 1:length(fds)
            if sum(strcmp(default_opts(1:2:end), fds{i})) == 0
                error(['opts containing a non-existing option of [' fds{i} ']']);
            end
        end
    end
end