function stopwatch_start()
    global sw_vec;
    global sw_lt; % lasttime
    global sw_id;
    global sw_cou;
    sw_id = tic;
    sw_vec = [];
    sw_cou = [];
    sw_lt = 0;
end