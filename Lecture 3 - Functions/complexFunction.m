function r = complexFunction(x, varargin)


    % Add extra options 
    p = inputParser;    % Create an instance of the parser
    addParameter(p, 'Theta', 0);
    % addRequired(p, 'Gamma', @(x) isnumeric(x) && (x>0)); 
    % addRequired(p, 'Epsilon', @(x) isnumeric(x) && (x>0));
    
    addParameter(p, 'Gamma', 0, @(x) isnumeric(x) && (x>0)); 
    addParameter(p, 'Epsilon', 0, @(x) isnumeric(x) && (x>0)); 

    parse(p, varargin{:});
    params = p.Results; 
    
    disp(params.Gamma); 

    r = sum(x) + params.Theta + params.Gamma^params.Epsilon; 

end 