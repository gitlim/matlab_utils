function stopwatch_output(ind)
    global sw_vec;
    global sw_cou;
    fprintf('\n\n');
    for i = find(sw_vec)
        fprintf('  %d (@ %d): %.3fsecs\n', i, sw_cou(i), sw_vec(i));
    end
end