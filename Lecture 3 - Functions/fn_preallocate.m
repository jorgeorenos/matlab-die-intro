function r = fn_preallocate(n) 


    % Bad design
%     for i = 1:n 
%         A(:, i) = rand(1000, 1); 
%     end


    % Good design = use number of columns
    A = zeros(1000, n); 
    for i = 1:n 
        A(:, i) = rand(1000, 1); 
    end
    

    % Return expanded A
    r = A; 


end