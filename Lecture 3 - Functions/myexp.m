function r = myexp(x, status)

    if nargin == 1 
        status = false; 
    end

    i = 1; 
    r = 1. ; 

    while i <= 100 

        r = r + exp_op(x,i); 
        
        i = i + 1; 
        
    end

end

function r2 = exp_op(x,i)

    %{
    for j = 1:100 
        a = 2; 
    end
    %} 

    % z = zeros(280, 3, 10000);  

    r2 = x^i / factorial(i); 
    
end
