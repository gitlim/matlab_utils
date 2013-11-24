function stopwatch_toc(sw_ind)
    if sw_ind == 0
        global sw_id;
        global sw_lt;
        sw_lt = toc(sw_id);
    else
        global sw_id;
        cur_time = toc(sw_id);
        global sw_lt;
        global sw_vec;
        global sw_cou;
        if length(sw_vec) < sw_ind
            sw_vec(sw_ind) = 0;
            sw_cou(sw_ind) = 0;
        end
        sw_vec(sw_ind) = sw_vec(sw_ind) + cur_time-sw_lt;
        sw_cou(sw_ind) = sw_cou(sw_ind) + 1;
        sw_lt = cur_time;
    end
end