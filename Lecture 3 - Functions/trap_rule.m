% Main function 
function [int_f] = trap_rule(f, a, b, nel)
    x = linspace(a,b,nel+1)';
    
    

    
    if a == 0 
        final_op = @(a,b,nel) ((b-a)/nel); 
    else
        final_op = @(a,b,nel) some_other_op(a,b,nel)*2; 
    end 
    
    int_f = 0.5 * final_op(a,b,nel) * (sum(f(x(1:end-1)) + f(x(2:end))));
end 


% Local function 
function res = some_other_op(a,b,nel) 

    % disp(x); % only works when defined in a nested fashion

    i = 0; 
    while (i < 100) 
        i = i + 1; 
    end

    res = ((b-a)/nel); 

end